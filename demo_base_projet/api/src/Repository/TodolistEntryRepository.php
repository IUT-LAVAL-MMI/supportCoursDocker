<?php

namespace App\Repository;

use App\Entity\TodolistEntry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method TodolistEntry|null find($id, $lockMode = null, $lockVersion = null)
 * @method TodolistEntry|null findOneBy(array $criteria, array $orderBy = null)
 * @method TodolistEntry[]    findAll()
 * @method TodolistEntry[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TodolistEntryRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, TodolistEntry::class);
    }

    // /**
    //  * @return TodolistEntry[] Returns an array of TodolistEntry objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?TodolistEntry
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
