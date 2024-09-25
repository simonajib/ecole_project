-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 sep. 2024 à 21:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

CREATE TABLE `administrator` (
  `department` varchar(255) DEFAULT NULL,
  `office_number` varchar(255) DEFAULT NULL,
  `phone_extension` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`department`, `office_number`, `phone_extension`, `user_id`) VALUES
('HR', '103', '659741258', 5);

-- --------------------------------------------------------

--
-- Structure de la table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cours_cours_id` bigint(20) DEFAULT NULL,
  `cours_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `description`, `title`, `cours_cours_id`, `cours_id`) VALUES
(1, 'Complétez les exercices sur les vecteurs de la leçon.', 'Exercice sur les vecteurs', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `classb`
--

CREATE TABLE `classb` (
  `class_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `grade_level_id` bigint(20) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classb`
--

INSERT INTO `classb` (`class_id`, `description`, `name`, `grade_level_id`, `teacher_id`) VALUES
(1, 'Cours de mathématiques pour les niveaux avancés', 'Mathématiques ', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `cours_id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_updated_date` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `classe_class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `content`, `created_date`, `last_updated_date`, `title`, `classe_class_id`) VALUES
(1, 'Introduction à l\'algèbre linéaire, matrices et vecteurs.', '2024-09-07 19:15:06.000000', '2024-09-07 19:15:06.000000', 'Algèbre linéaire', 1);

-- --------------------------------------------------------

--
-- Structure de la table `grade_level`
--

CREATE TABLE `grade_level` (
  `grade_level_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `grade_level`
--

INSERT INTO `grade_level` (`grade_level_id`, `description`, `level_name`) VALUES
(1, 'First year of the preschool cycle, aimed at children aged 4 to 5 years.', 'Cycle Préscolaire - Année 1'),
(2, 'Second year of the preschool cycle, for children aged 5 to 6 years.', 'Cycle Préscolaire - Année 2'),
(3, 'First year of primary school, typically for children aged 6 years.', 'Cycle Primaire - Année 1'),
(4, 'Second year of primary school, for children aged 7 years.', 'Cycle Primaire - Année 2'),
(5, 'Third year of primary school, for children aged 8 years.', 'Cycle Primaire - Année 3'),
(6, 'Fourth year of primary school, for children aged 9 years.', 'Cycle Primaire - Année 4'),
(7, 'Fifth year of primary school, for children aged 10 years.', 'Cycle Primaire - Année 5'),
(8, 'Sixth year of primary school, for children aged 11 years.', 'Cycle Primaire - Année 6'),
(9, 'First year of the middle school cycle, for students aged 12 years.', 'Cycle Collégial - Année 7'),
(10, 'Second year of the middle school cycle, for students aged 13 years.', 'Cycle Collégial - Année 8'),
(11, 'Third year of the middle school cycle, for students aged 14 years.', 'Cycle Collégial - Année 9'),
(12, 'First year of the secondary school cycle, for students aged 15 years.', 'Cycle Secondaire - Année 10'),
(13, 'Second year of the secondary school cycle, for students aged 16 years.', 'Cycle Secondaire - Année 11'),
(14, 'Final year of the secondary school cycle , leading to the baccalauréat, for students aged 17 years.', 'Cycle Secondaire - Année 12');

-- --------------------------------------------------------

--
-- Structure de la table `parent`
--

CREATE TABLE `parent` (
  `contact_number` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `parent`
--

INSERT INTO `parent` (`contact_number`, `user_id`) VALUES
('0659556270', 3);

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `grade_id` bigint(20) DEFAULT NULL,
  `student_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `date`, `grade_id`, `student_user_id`) VALUES
(1, 17400, '2024-09-07 20:05:27.000000', 12, 2);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `quiz_quiz_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`question_id`, `content`, `correct_answer`, `explanation`, `quiz_quiz_id`) VALUES
(3, 'Quelle est la définition d\'une matrice ?', 'Une table de nombres organisés en lignes et colonnes.', 'Une matrice est une table de nombres organisés en lignes et colonnes.', 3),
(4, 'Quelle est la règle pour multiplier deux matrices ?', 'Le nombre de colonnes de la première matrice doit être égal au nombre de lignes de la seconde.', 'Pour multiplier deux matrices, le nombre de colonnes de la première matrice doit être égal au nombre de lignes de la seconde.', 3);

-- --------------------------------------------------------

--
-- Structure de la table `question_choices`
--

CREATE TABLE `question_choices` (
  `question_question_id` int(11) NOT NULL,
  `choices` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question_choices`
--

INSERT INTO `question_choices` (`question_question_id`, `choices`) VALUES
(3, 'Une liste de nombres'),
(3, 'Un ensemble de vecteurs'),
(3, 'Une table de nombres organisés en lignes et colonnes'),
(3, 'Un graphique'),
(4, 'Les matrices doivent avoir la même taille'),
(4, 'Le nombre de colonnes de la première matrice doit être égal au nombre de lignes de la seconde'),
(4, 'Les matrices doivent être carrées'),
(4, 'Les matrices doivent avoir le même nombre de lignes et de colonnes');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` bigint(20) NOT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `is_accessible` bit(1) NOT NULL,
  `quiz_description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cours_id` bigint(20) DEFAULT NULL,
  `quiz_type` enum('CONTROL','EXAM','EXERCISE','FINAL','HOMEWORK','MIDTERM','MOCK','PRACTICE','PROJECT','QUIZ','REVIEW','SURVEY') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `due_date`, `is_accessible`, `quiz_description`, `title`, `cours_id`, `quiz_type`) VALUES
(3, NULL, b'0', 'Testez vos connaissances sur les matrices.', 'Quiz sur les matrices', 1, 'QUIZ');

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `resource_id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('DOCUMENT','VIDEO') DEFAULT NULL,
  `cours_cours_id` bigint(20) DEFAULT NULL,
  `cours_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`resource_id`, `path`, `title`, `type`, `cours_cours_id`) VALUES
(1, 'src\\main\\resources\\asset\\Model.pdf', 'les matrices', 'DOCUMENT', 1 ),
(3, 'src\\main\\resources\\asset\\6 kill en 0.15 seconde.mp4', 'matrices', 'VIDEO', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `grade_level_grade_level_id` bigint(20) DEFAULT NULL,
  `parent_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`user_id`, `grade_level_grade_level_id`, `parent_user_id`) VALUES
(2, 12, 3);

-- --------------------------------------------------------

--
-- Structure de la table `student_class`
--

CREATE TABLE `student_class` (
  `student_class_id` int(11) NOT NULL,
  `classe_class_id` int(11) DEFAULT NULL,
  `student_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `type` enum('ANNUAL','MONTHLY','SEMESTRIAL') DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `end_date`, `start_date`, `type`, `payment_payment_id`) VALUES
(1, '2025-03-07 21:05:27.000000', '2024-09-07 20:05:27.000000', 'SEMESTRIAL', 1);

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `hire_date` datetime(6) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`hire_date`, `subject`, `user_id`) VALUES
('2024-09-02 00:00:00.000000', 'Mathématiques', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tutor`
--

CREATE TABLE `tutor` (
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tutor`
--

INSERT INTO `tutor` (`subject`, `user_id`) VALUES
('Mathématiques', 4);

-- --------------------------------------------------------

--
-- Structure de la table `tutor_student`
--

CREATE TABLE `tutor_student` (
  `tutor_student_id` bigint(20) NOT NULL,
  `student_user_id` int(11) DEFAULT NULL,
  `tutor_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMINISTRATOR','PARENT','STUDENT','TEACHER','TUTOR') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `date_joined`, `email`, `name`, `password`, `role`) VALUES
(1, '2024-09-07 19:01:58.000000', 'najibsimo@gmail.com', 'Mohamed Najib', '123654', 'TEACHER'),
(2, '2024-09-07 20:04:46.000000', 'mouad@gmail.com', 'Mouad Arahal', '123654', 'STUDENT'),
(3, '2024-09-07 20:05:00.000000', 'arahal@gmail.com', 'Arahal', '1452369', 'PARENT'),
(4, '2024-09-09 15:33:48.000000', 'mouadal@gmail.com', 'Mouad Arahal', '123546', 'TUTOR'),
(5, '2024-09-09 15:36:23.000000', 'najibmohamed@gmail.com', 'Mohamed Najib', '1239515', 'ADMINISTRATOR');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `FK740lvg6yn2uolte82ylgnwoky` (`cours_cours_id`),
  ADD KEY `FKkpad5s8sjl2snemmxl5xhvto6` (`cours_id`);

--
-- Index pour la table `classb`
--
ALTER TABLE `classb`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `FK7b4idfniytp6nuc0k7fduvm8j` (`grade_level_id`),
  ADD KEY `FK86dkoyqywc8yhdtbyc3nlu8jp` (`teacher_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`),
  ADD KEY `FKh2wq5w1qmx6ojw8sl03n1u9eu` (`classe_class_id`);

--
-- Index pour la table `grade_level`
--
ALTER TABLE `grade_level`
  ADD PRIMARY KEY (`grade_level_id`);

--
-- Index pour la table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `UKs1kj0u6p2vt41vvwdg87u8bq4` (`grade_id`),
  ADD KEY `FK64hcrjqv08c0ysig1d0mthwcx` (`student_user_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `FKon05dkm2bs2fa7rstbv32aecy` (`quiz_quiz_id`);

--
-- Index pour la table `question_choices`
--
ALTER TABLE `question_choices`
  ADD KEY `FKhe7iepnqgikrt1f5oofldfijy` (`question_question_id`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `FKum3lw5o1i8w0j7qgu5jci5fb` (`cours_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `FKiymhja3va8fi2r08y2ev713tq` (`cours_cours_id`),
  ADD KEY `FK2lwo7d08hacubv0417vb0wx9g` (`cours_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK957a81x9llu4hmv1luni0r28o` (`grade_level_grade_level_id`),
  ADD KEY `FK4sa3aikdwkxa64ol9a238t2p4` (`parent_user_id`);

--
-- Index pour la table `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`student_class_id`),
  ADD KEY `FK9wympv9ebcucsqvdv97hp33w2` (`classe_class_id`),
  ADD KEY `FKn89odnxsi4cjgorb4koone91o` (`student_user_id`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `FKltugv1w02m56f5caq982x7u59` (`payment_payment_id`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `tutor_student`
--
ALTER TABLE `tutor_student`
  ADD PRIMARY KEY (`tutor_student_id`),
  ADD KEY `FKca1od4f0xp79n0n6snguoybol` (`student_user_id`),
  ADD KEY `FKkg2trdm7wcy3xs0gpjq68hrbv` (`tutor_user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `classb`
--
ALTER TABLE `classb`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `grade_level`
--
ALTER TABLE `grade_level`
  MODIFY `grade_level_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `resource_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `student_class`
--
ALTER TABLE `student_class`
  MODIFY `student_class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tutor_student`
--
ALTER TABLE `tutor_student`
  MODIFY `tutor_student_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FKqrcysxoyqjtyq2obdovndf3dq` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `FK740lvg6yn2uolte82ylgnwoky` FOREIGN KEY (`cours_cours_id`) REFERENCES `cours` (`cours_id`),
  ADD CONSTRAINT `FKkpad5s8sjl2snemmxl5xhvto6` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`cours_id`);

--
-- Contraintes pour la table `classb`
--
ALTER TABLE `classb`
  ADD CONSTRAINT `FK7b4idfniytp6nuc0k7fduvm8j` FOREIGN KEY (`grade_level_id`) REFERENCES `grade_level` (`grade_level_id`),
  ADD CONSTRAINT `FK86dkoyqywc8yhdtbyc3nlu8jp` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`user_id`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FKh2wq5w1qmx6ojw8sl03n1u9eu` FOREIGN KEY (`classe_class_id`) REFERENCES `classb` (`class_id`);

--
-- Contraintes pour la table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `FKl4w905h1321m2ide56ov5efb0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK1d255g7onx0pi1dfs0ii4i1rr` FOREIGN KEY (`grade_id`) REFERENCES `grade_level` (`grade_level_id`),
  ADD CONSTRAINT `FK64hcrjqv08c0ysig1d0mthwcx` FOREIGN KEY (`student_user_id`) REFERENCES `student` (`user_id`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKon05dkm2bs2fa7rstbv32aecy` FOREIGN KEY (`quiz_quiz_id`) REFERENCES `quiz` (`quiz_id`);

--
-- Contraintes pour la table `question_choices`
--
ALTER TABLE `question_choices`
  ADD CONSTRAINT `FKhe7iepnqgikrt1f5oofldfijy` FOREIGN KEY (`question_question_id`) REFERENCES `questions` (`question_id`);

--
-- Contraintes pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FKum3lw5o1i8w0j7qgu5jci5fb` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`cours_id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK2lwo7d08hacubv0417vb0wx9g` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`cours_id`),
  ADD CONSTRAINT `FKiymhja3va8fi2r08y2ev713tq` FOREIGN KEY (`cours_cours_id`) REFERENCES `cours` (`cours_id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK4sa3aikdwkxa64ol9a238t2p4` FOREIGN KEY (`parent_user_id`) REFERENCES `parent` (`user_id`),
  ADD CONSTRAINT `FK957a81x9llu4hmv1luni0r28o` FOREIGN KEY (`grade_level_grade_level_id`) REFERENCES `grade_level` (`grade_level_id`),
  ADD CONSTRAINT `FKk5m148xqefonqw7bgnpm0snwj` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `FK9wympv9ebcucsqvdv97hp33w2` FOREIGN KEY (`classe_class_id`) REFERENCES `classb` (`class_id`),
  ADD CONSTRAINT `FKn89odnxsi4cjgorb4koone91o` FOREIGN KEY (`student_user_id`) REFERENCES `student` (`user_id`);

--
-- Contraintes pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `FKltugv1w02m56f5caq982x7u59` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Contraintes pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `FKpb6g6pahj1mr2ijg92r7m1xlh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `FK4bpotihp1nbteoo09flh9p4ur` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `tutor_student`
--
ALTER TABLE `tutor_student`
  ADD CONSTRAINT `FKca1od4f0xp79n0n6snguoybol` FOREIGN KEY (`student_user_id`) REFERENCES `student` (`user_id`),
  ADD CONSTRAINT `FKkg2trdm7wcy3xs0gpjq68hrbv` FOREIGN KEY (`tutor_user_id`) REFERENCES `tutor` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
