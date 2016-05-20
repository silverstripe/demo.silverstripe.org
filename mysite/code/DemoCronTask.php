<?php
class DemoCronTask implements CronTask {

    /**
    *
    * @return string
    */
    public function getSchedule()
    {
        return "*/20 * * * *";
    }

    /**
    *
    * @return void
    */
    public function process()
    {
//        $this->request = Controller::curr()->getRequest();

        //refresh demo site
//        $reset_task = new DemoResetTask();
//        $reset_task->run($this->request);
    }
}
