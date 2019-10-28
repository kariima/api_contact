<?php

namespace App\Controller;

use App\Entity\Contact;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Serializer\SerializerInterface;


class ApiController extends AbstractController
{
    /**
     * @Route("/api", name="api")
     */
    public function index(SerializerInterface $serializer)
    {
        $contact = new Contact();
        $contact->setNom('Joli');
        $contact->setPrenom('Emilie');
        $contact->setTelephone('0601020304');
        $contact->setEmail('emilie.joli@email.com');

        $data = $serializer->serialize($contact, 'json');

        return new Response($data, 200, ['Content-Type' => 'application/json']);
    }
}
