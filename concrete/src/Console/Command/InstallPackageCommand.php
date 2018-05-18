<?php
namespace Concrete\Core\Console\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Package;
use Exception;

class InstallPackageCommand extends Command
{
    protected function configure()
    {
        $this
            ->setName('c5:package-install')
            ->addOption('full-content-swap', null, InputOption::VALUE_NONE, 'If this option is specified a full content swap will be performed (if the package supports it)')
            ->setDescription('Install a concrete5 package')
            ->addArgument('package', InputArgument::REQUIRED, 'The handle of the package to be installed')
            ->addArgument('package-options', InputArgument::IS_ARRAY, 'List of key-value pairs to pass to the package install routine (example: foo=bar baz=foo)')
            ->setHelp(<<<EOT
Returns codes:
  0 operation completed successfully
  1 errors occurred
EOT
            )
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $rc = 0;
        try {
            $pkgHandle = $input->getArgument('package');
            $packageOptions = array();
            foreach ($input->getArgument('package-options') as $keyValuePair) {
                list($key, $value) = explode('=', $keyValuePair, 2);
                $key = trim($key);
                if (substr($key, -2) === '[]') {
                    $isArray = true;
                    $key = rtrim(substr($key, 0, -2));
                } else {
                    $isArray = false;
                }
                if ($key === '' || !isset($value)) {
                    throw new Exception(sprintf("Unable to parse the package option '%s': it must be in the form of key=value", $keyValuePair));
                }
                if (isset($packageOptions[$key])) {
                    if (!($isArray && is_array($packageOptions[$key]))) {
                        throw new Exception(sprintf("Duplicated package option '%s'", $key));
                    }
                    $packageOptions[$key][] = $value;
                } else {
                    $packageOptions[$key] = $isArray ? ((array) $value) : $value;
                }
            }

            $output->write("Looking for package '$pkgHandle'... ");
            foreach (Package::getInstalledList() as $installed) {
                if ($installed->getPackageHandle() === $pkgHandle) {
                    throw new Exception(sprintf("The package '%s' (%s) is already installed", $pkgHandle, $installed->getPackageName()));
                }
            }
            $pkg = null;
            foreach (Package::getAvailablePackages() as $available) {
                if ($available->getPackageHandle() === $pkgHandle) {
                    $pkg = $available;
                    break;
                }
            }
            if ($pkg === null) {
                throw new Exception(sprintf("No package with handle '%s' was found", $pkgHandle));
            }
            $output->writeln(sprintf('<info>found (%s).</info>', $pkg->getPackageName()));

            $output->write('Checking preconditions... ');
            $test = Package::testForInstall($pkgHandle);
            if ($test !== true) {
                throw new Exception(implode("\n", Package::mapError($r)));
            }
            $output->writeln('<info>good.</info>');

            $output->write('Installing package... ');
            $pkgInstalled = $pkg->install($packageOptions);
            $output->writeln('<info>done.</info>');

            if ($pkg->allowsFullContentSwap() && $input->getOption('full-content-swap')) {
                $output->write('Performing full content swap... ');
                $pkg->swapContent(array());
                $output->writeln('<info>done.</info>');
            }
        } catch (Exception $x) {
            $output->writeln('<error>'.$x->getMessage().'</error>');
            $rc = 1;
        }

        return $rc;
    }
}
