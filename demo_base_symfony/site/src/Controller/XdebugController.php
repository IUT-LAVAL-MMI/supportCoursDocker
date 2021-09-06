<?php
// src/Controller/XdebugController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class XdebugController extends AbstractController
{
    /**
     * @Route("/xdebug", name="xdebug")
     */
    public function main()
    {
        $texte = xdebug_info();

        return $this->render('test/test.html.twig', [
            'texte' => $texte,
        ]);
    }
}