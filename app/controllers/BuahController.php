<?php

class BuahController extends ControllerBase
{

    public function indexAction()
    {

        $this->view->buahs= Buah::find();
        $this->flashSession->error("hhh");
        return $this->response->redirect('/');
    }
    public function buahAction()
    {
        $this->view->buahs= Buah::find();
        
    }

}