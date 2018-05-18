<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/zf2 for the canonical source repository
 * @copyright Copyright (c) 2005-2012 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 * @package   Zend_Queue
 */

namespace ZendQueueTest;

/*
 * The adapter test class provides a universal test class for all of the
 * abstract methods.
 *
 * All methods marked not supported are explictly checked for for throwing
 * an exception.
 */

/** PHPUnit Test Case */

/** TestHelp.php */

/** Zend_Queue_Queue2Test */

/**
 * @category   Zend
 * @package    Zend_Queue
 * @subpackage UnitTests
 * @group      Zend_Queue
 */
class Queue2Test extends QueueBaseTest
{
    protected function setUp()
    {
        // Test Zend_Config
        $this->config = array(
            'name'      => 'queue1'
        );

        $this->queue = new \ZendQueue\Queue('NullAdapter', $this->config);
    }
}
