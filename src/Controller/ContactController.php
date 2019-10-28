<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Repository\ContactRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;

/**
 * @Route("/api/contacts")
 */

class ContactController extends AbstractController
{
    /**
     * @Route("/{page<\d+>?1}", name="list_contact", methods={"GET"})
     */
    public function index(Request $request, ContactRepository $contactRepository, SerializerInterface $serializer)
    {
        $page = $request->query->get('page');

        if(is_null($page) || $page<1){
            $page=1;
        }
        
        $limit = 10;
        $contacts = $contactRepository->findAllContacts($page, $limit);
        $data = $serializer->serialize($contacts, 'json');

        return new Response($data, 200, [ 'Content-Type' => 'application/json']);
    }

    /**
     * @Route("/{id}", name = "show_contact", methods={"GET"})
     */

    public function show(Contact $contact, ContactRepository $contactRepository, SerializerInterface $serializer)
    {
        $contact = $contactRepository->find($contact->getId());
        $data = $serializer->serialize($contact, 'json');

        return new Response($data, 200, ['Content-Type' => 'application/json']);

    }


}
