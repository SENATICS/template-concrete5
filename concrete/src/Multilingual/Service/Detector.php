<?php

namespace Concrete\Core\Multilingual\Service;

use Concrete\Core\Multilingual\Page\Section\Section;
use Concrete\Core\Page\Page;
use Session;
use Cookie;
use Config;

defined('C5_EXECUTE') or die("Access Denied.");

class Detector
{
    protected static $enabled;

    /**
     * Returns the preferred section based on session, cookie,
     * user object, default browser (if allowed), and finally
     * site preferences.
     * Since the user's language is not a locale but a language,
     * attempts to determine best section for the given language.
     *
     * @return Section
     */
    public static function getPreferredSection()
    {
        $locale = false;
        // they have a language in a certain session going already
        if (Session::has('multilingual_default_locale')) {
            $locale = Session::get('multilingual_default_locale');
        } elseif (Cookie::has('multilingual_default_locale')) {
            $locale = Cookie::get('multilingual_default_locale');
        }

        if ($locale) {
            $home = Section::getByLocale($locale);
            if ($home) {
                return $home;
            }
        }

        $u = new \User();
        if ($u->isRegistered()) {
            $userDefaultLanguage = $u->getUserDefaultLanguage();
            if ($userDefaultLanguage) {
                $home = Section::getByLocaleOrLanguage($userDefaultLanguage);
                if ($home) {
                    return $home;
                }
            }
        }

        if (Config::get('concrete.multilingual.use_browser_detected_locale')) {
            $home = false;
            $locales = \Punic\Misc::getBrowserLocales();
            foreach (array_keys($locales) as $locale) {
                $home = Section::getByLocaleOrLanguage($locale);
                if ($home) {
                    break;
                }
            }

            if ($home) {
                return $home;
            }
        }

        return Section::getByLocale(Config::get('concrete.multilingual.default_locale'));
    }

    public static function setupSiteInterfaceLocalization(Page $c = null)
    {
        $loc = \Localization::getInstance();
        if (!(\User::isLoggedIn() && Config::get('concrete.multilingual.keep_users_locale'))) {
            if (!$c) {
                $c = Page::getCurrentPage();
            }
            // don't translate dashboard pages
            $dh = \Core::make('helper/concrete/dashboard');
            if ($dh->inDashboard($c)) {
                return;
            }
            $locale = null;
            $ms = Section::getBySectionOfSite($c);
            if ($ms) {
                $locale = $ms->getLocale();
            }
            if (!$locale) {
                if (Config::get('concrete.multilingual.use_previous_locale') && Session::has('previous_locale')) {
                    $locale = Session::get('previous_locale');
                }
                if (!$locale) {
                    $ms = static::getPreferredSection();
                    if ($ms) {
                        $locale = $ms->getLocale();
                    }
                }
            }
            if ($locale) {
                $loc->setLocale($locale);
            }
        }
        Session::set('previous_locale', $loc->getLocale());
    }

    public static function isEnabled()
    {
        if (!isset(self::$enabled)) {
            $app = \Core::make('app');
            if (!$app->isInstalled()) {
                return false;
            }
            $db = \Database::connection();
            $count = $db->GetOne('select count(cID) from MultilingualSections');
            self::$enabled = $count > 0;
        }

        return self::$enabled;
    }
}
