<?php

namespace App\DataFixtures;

use App\Entity\TodolistEntry;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixturesSql extends Fixture
{

    public function load(ObjectManager $manager)
    {
        $start=strtotime("1 October 2020");
        $end=strtotime("31 January 2021");
        // création de 20 choses à faire ! Bam!
        for ($i = 0; $i < 20; $i++) {
            $item = new TodolistEntry();
            $item->setContent((string)self::randomContent(10,'words',false));
            $date=date("Y-m-d", mt_rand($start, $end));

            $item->setDueDate(\DateTime::createFromFormat('Y-m-d', $date));
            $manager->persist($item);
        }

        $manager->flush();
    }

    function randomContent($quantite, $type, $lorem){
            $url = "http://www.lipsum.com/feed/xml?amount=$quantite&what=$type&start=".($lorem?'yes':'no');
            return simplexml_load_file($url)->lipsum;
    }
}
