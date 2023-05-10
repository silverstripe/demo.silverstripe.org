<?php

use SilverStripe\CronTask\Interfaces\CronTask;

class DemoCronTask implements CronTask
{
    /**
     * @return string
     */
    public function getSchedule()
    {
        return "*/20 * * * *";
    }

    public function process()
    {
        //refresh demo site
        $reset_task = new DemoResetTask();
        $reset_task->run(null);
    }
}
