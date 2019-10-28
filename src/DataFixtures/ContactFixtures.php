<?php

namespace App\DataFixtures;

use App\Entity\Contact;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class ContactFixtures extends Fixture
{
    private $noms = ['Joli', 'Potter'];
    private $prenoms = ['Emilie', 'Harry'];
    private $emails = ['gmail', 'hotmail'];

    public function load(ObjectManager $manager)
    {
        for ($i = 1; $i <= 20; $i++) {
            $contact = new Contact();
            $contact->setNom($this->noms[rand(0, 1)]);
            $contact->setPrenom($this->prenoms[rand(0, 1)]);
            $contact->setTelephone(rand(0600000000, 0700000000));
            $contact->setEmail($this->emails[rand(0, 1)]);

            $manager->persist($contact);
        }

        $manager->flush();
    }

}
