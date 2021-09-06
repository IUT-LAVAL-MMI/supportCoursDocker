<?php

namespace App\DataFixtures;

use App\Document\TodolistEntry;
use Doctrine\Bundle\MongoDBBundle\Fixture\Fixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\ODM\MongoDB\DocumentManager;
use Doctrine\ODM\MongoDB\MongoDBException;
use Doctrine\Persistence\ObjectManager;

class AppFixturesMongo extends Fixture
{

    private $dm;
    public function __construct(DocumentManager $dm)
    {
        $this->dm = $dm;
    }

    public function load(ObjectManager $manager)
    {
        $start=strtotime("1 October 2020");
        $end=strtotime("31 January 2021");
        // création de 5 choses à faire ! Bam!
        for ($i = 0; $i < 5; $i++) {
            $item = new TodolistEntry();
            //contenu
            $item->setContent((string)self::randomContent(10,'words',false));
            //date
            $date=date("Y-m-d", mt_rand($start, $end));
            $item->setDueDate(\DateTime::createFromFormat('Y-m-d', $date));
            //extra args
            $args=[];
            $nbrArgs=random_int(1,4);
            for ($j = 1; $j <=$nbrArgs; $j++) {
                $key= (string)explode(" ",self::randomContent(1,'words',false))[0];
                $args[$key] = (string)self::randomContent(4,'words',false);
            }
            $item->setExtraArgs($args);
            //ajout bdd
            $this->dm->persist($item);
        }

        $this->dm->flush();
    }

    function randomContent($quantite, $type, $lorem){
            $url = "http://www.lipsum.com/feed/xml?amount=$quantite&what=$type&start=".($lorem?'yes':'no');
            return simplexml_load_file($url)->lipsum;
    }
}
