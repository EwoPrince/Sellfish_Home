import 'package:flutter/material.dart';
abstract class AppInformation {
  static const name = 'SellFish Landing Page';
  static const version = '0.0.1';
  static const legalese = '©2023 SellFish';


  static const content = [
    Text(
      'The landing page SellFIsh',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
    Divider(),
    Text(
      'Terms and Conditions for SellFish Social Media Application  Last Updated: August 17, 2023  1. Acceptance of Terms  Welcome to SellFish, a social media application provided by Ewoindustry. By accessing or using SellFish ("the Application"), you agree to comply with and be bound by these Terms and Conditions. If you do not agree with these terms, please do not use the Application.  2. User Accounts  To access certain features of the Application, you may be required to create a user account. You are responsible for maintaining the confidentiality of your account information and are fully responsible for all activities that occur under your account.  You agree to provide accurate and complete information when creating an account and to update this information as necessary to keep it accurate and current.  3. User Content  SellFish allows you to post, share, and interact with various types of content, including text, images, videos, and links ("User Content"). You retain ownership of your User Content.  By posting User Content on SellFish, you grant Ewoindustry a non-exclusive, royalty-free, worldwide license to use, display, reproduce, and distribute your User Content for the purposes of operating and promoting the Application.  4. Prohibited Activities  You agree not to use SellFish for any purpose that is unlawful or prohibited by these Terms and Conditions. This includes, but is not limited to:  Posting content that is defamatory, obscene, abusive, or harmful to others. Impersonating any person or entity, or falsely representing your affiliation with a person or entity. Violating any applicable laws or regulations. 5. Privacy  Your use of SellFish is subject to our Privacy Policy, which outlines how we collect, use, and protect your personal information. By using SellFish, you consent to the practices described in the Privacy Policy.  You acknowledge that any information you share publicly on SellFish may be viewed by others and should be considered non-confidential.  6. Intellectual Property  SellFish, including its content, features, and functionality, is owned by Ewoindustry and is protected by intellectual property laws. You may not copy, modify, distribute, or reproduce any part of SellFish without prior written consent.  All trademarks, logos, and service marks displayed on SellFish are the property of their respective owners.  7. Termination  Ewoindustry reserves the right to terminate or suspend your access to SellFish at any time for violations of these Terms and Conditions or for any other reason deemed necessary.  8. Limitation of Liability  In no event shall Ewoindustry be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or relating to your use of SellFish.  9. Governing Law  These Terms and Conditions shall be governed by and construed in accordance with the laws of [Your Jurisdiction], without regard to its conflict of law principles.  10. Changes to Terms and Conditions  Ewoindustry reserves the right to modify or replace these Terms and Conditions at any time. Changes will be effective upon posting to SellFish. It is your responsibility to review these terms periodically for updates.',
      textAlign: TextAlign.justify,
    )
  ];
}
