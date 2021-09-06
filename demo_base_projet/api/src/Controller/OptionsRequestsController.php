<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class OptionsRequestsController extends AbstractController
{
    /**
     * @Route("/api/{req}", name="api_options", methods="OPTIONS", requirements={"req" = "^.+$"})
     */
    public function answerOptions(): Response
    {
        return new Response(null, Response::HTTP_NO_CONTENT);
    }
}
