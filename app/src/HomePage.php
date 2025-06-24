<?php

class HomePage extends Page
{
    public function canEdit($member = null)
    {
        return false;
    }
}
