# Tamper Proof Digital Credential Verification Using Blockchain Technology And Capsule Siamese Networks
## 📒 Overview
This Project Aims To Overcome The Traditional Certificate Storing And Verification to Modernize the Secure Digital Credential(like Educational Certificate) Management By Using This Technologies are Blockchain And Capsule Siamese Networks And One time-Symmetric Key Encryption Using AES(Advanced Encryption Standard) Using Key Derivation Algorithm:PBKDF2HMAC(with SHA-256).This Processes by Offering The Robust,Scalable And tamper-Proof Solution For Issuing And Veriying The Educational Certificates.
## 🧠 Key Features
🔐 Tamper-Proof Storage Using Blockchain Technology With Cryptographic Hash Function.
🤖 Forgery Detection Using Via Capsule Siamese Neural Networks In Artificial Intelligence.
🔑🔑 Secure Data Transmission Using One-Time Symmetric Key With The Help Of (AES Algorithm to generate Key).
🌐🌐 Role Based Web-Interface For The Certificate Issuer, Certificate Holder And Certificate Verifier.
⚠ Real-time fraud alerts and tampering notifications Using Flask With The help of the Capsule Siamese networks.

🔄 Blockchain immutability with decentralized trust

📲 Certificate locker web app for secure access and sharing

🧪 testing including black-box and white-box methodologies
## 📁 Project Structure

<pre lang="bash"> 
/Digital-Credential-Verification/
│
├── /static/                  # Static files (CSS, JS, encrypted files)
├── /templates/               # HTML templates (Jinja2 with Flask)
├── /upload/                  # Certificate upload directory
├── /decrypted/               # Decrypted certificate files
├── app.py                    # Flask application entry point
├── blockchain.py             # Blockchain logic and structure
├── siamese_model.py          # Capsule Siamese Network for forgery detection
├── requirements.txt          # Python dependencies
└── README.md                 # Project documentation 
</pre>

## 🔧 Tech Stack

* Frontend: HTML Version 5, CSSV3, Bootstrap 4.

* Backend: Python 3.7.4, Flask 1.1.1.

* Blockchain: Custom implementation with JSON structure.

* AI/ML: Capsule Siamese Networks (PyTorch, TensorFlow, Pillow And OpenCV).

* Database: MySQL.

* Security: One-Time Symmetric Key Encryption (Fernet, PBKDF2, AES).

* Server: WampServer 2i.

## 👨‍💼 User Roles
 * Certificate Issuer
    -  uploads verified certificates  and Generates The UCIC Code And Send To The Receiver Mail ID.
    - Issues hard/soft copies and stores hash on blockchain.

* Certificate Holder
  - Uploads certificates.

  - Receives UCIC & key.

  - Verifies integrity and shares verification link.

* Certificate Verifier
  Requests and verifies certificate authenticity using blockchain and AI tamper detection.

## 🛡 Security Modules
 * Blockchain Layer: Stores hashes of certificates and tracks their transactions.

 * Capsule Siamese Networks: Locates and identifies tampered certificate content.

 * Symmetric Encryption: One-time key encryption for secure certificate exchange Using AES(SHA-256)Algorithm.

## 🚀 How to Run

 ### 📥 Clone the Repository 
 bash 
 git clone https://github.com/Dhayanithi9940/Digital-Credential-Verification.git

bash
 cd Digital-Credential-Verfication 
 
 ### 📦 Install Dependencies 
 bash 
 pip install -r requirements.txt

 ### ▶ Run the App 
 bash 
 python app.py

 ### 🌐 Access via Browser 
 bash 
 http://127.0.0.1:5000
