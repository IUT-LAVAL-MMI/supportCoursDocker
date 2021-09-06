<?php
// src/Controller/MainController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MainController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function main()
    {
        $texte = "OKEY DONKEY !!!";

        return $this->render('test/test.html.twig', [
            'texte' => $texte,
        ]);
    }

}