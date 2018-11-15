<?
$MESS["MAIN_DUMP_FILE_CNT"] = "Dateien komprimiert:";
$MESS["MAIN_DUMP_FILE_SIZE"] = "Dateigröße:";
$MESS["MAIN_DUMP_FILE_FINISH"] = "Backup ist vollständig";
$MESS["MAIN_DUMP_FILE_MAX_SIZE"] = "Dateien ausschließen, die größer sind als (0 - ohne Begrenzung):";
$MESS["MAIN_DUMP_FILE_STEP_SLEEP"] = "Interval:";
$MESS["MAIN_DUMP_FILE_STEP_sec"] = "Sekunden";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_b"] = "B";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_kb"] = "KB";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_mb"] = "MB ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_gb"] = "GB ";
$MESS["MAIN_DUMP_FILE_DUMP_BUTTON"] = "Sicherungskopie";
$MESS["MAIN_DUMP_FILE_STOP_BUTTON"] = "Stop";
$MESS["MAIN_DUMP_FILE_KERNEL"] = "Kernel archivieren:";
$MESS["MAIN_DUMP_FILE_NAME"] = "Name";
$MESS["FILE_SIZE"] = "Dateigröße";
$MESS["MAIN_DUMP_FILE_TIMESTAMP"] = "Geändert";
$MESS["MAIN_DUMP_FILE_PUBLIC"] = "Öffentlichen Teil archivieren:";
$MESS["MAIN_DUMP_BASE_STAT"] = "Statistik";
$MESS["MAIN_DUMP_BASE_SINDEX"] = "Suchindex";
$MESS["MAIN_DUMP_BASE_SIZE"] = "MB";
$MESS["MAIN_DUMP_PAGE_TITLE"] = "Backup";
$MESS["MAIN_DUMP_LIST_PAGE_TITLE"] = "Sicherungskopien";
$MESS["MAIN_DUMP_AUTO_PAGE_TITLE"] = "Automatische Datensicherung erstellen";
$MESS["MAIN_DUMP_AUTO_BUTTON"] = "Automatische Datensicherung";
$MESS["MAIN_DUMP_SITE_PROC"] = "Komprimieren...";
$MESS["MAIN_DUMP_ARC_SIZE"] = "Archivgröße:";
$MESS["MAIN_DUMP_TABLE_FINISH"] = "Tabellen bearbeitet:";
$MESS["MAIN_DUMP_ACTION_DOWNLOAD"] = "Download";
$MESS["MAIN_DUMP_DELETE"] = "Löschen";
$MESS["MAIN_DUMP_ALERT_DELETE"] = "Wollen Sie die Datei wirklich löschen?";
$MESS["MAIN_DUMP_FILE_PAGES"] = "Backup-Kopie";
$MESS["MAIN_RIGHT_CONFIRM_EXECUTE"] = "Achtung! Das Entpacken der Sicherungskopie auf einer funktionierenden Seite kann das Archiv beschädigen! Wollen Sie fortfahren?";
$MESS["MAIN_DUMP_RESTORE"] = "Entpacken";
$MESS["MAIN_DUMP_MYSQL_ONLY"] = "Das Backupsystem arbeitet nur mit MySQL Datenbankdaten.<br>Bitte verwenden Sie externe Tools um eine Datenbankkopie zu erstellen.";
$MESS["MAIN_DUMP_HEADER_MSG1"] = "Um das Seitenarchiv zum anderen Host zu übertragen, fügen Sie bitte im Root-Verzeichnis der neuen Seite das Wiederherstellungsskript <a href='/bitrix/admin/restore_export.php'>restore.php</a> und das Archiv selbst ein. Dann geben Sie in der Browser-Zeile &quot;&lt;Seitenname&gt;/restore.php&quot; und folgen Sie den Instruktionen.";
$MESS["MAIN_DUMP_SKIP_SYMLINKS"] = "Symbolische Links zu Verzeichnissen überspringen:";
$MESS["MAIN_DUMP_MASK"] = "Dateien und Verzeichnisse aus dem Archiv ausschließen (nach Maske):";
$MESS["MAIN_DUMP_MORE"] = "Mehr...";
$MESS["MAIN_DUMP_FOOTER_MASK"] = "Für die Ausschlussmaske gelten folgenden Regeln:
<p>
 <li>Die Maskenvorlage kann Symbole &quot;*&quot; beinhalten, die einem beliebigen Anzahl verschiedener Symbole, die im Datei- oder Ordnernamen enthalten sind, entsprechen;</li>
 <li>Wenn am Anfang ein Slash oder ein Backslash steht (&quot;/&quot; oder &quot;\\&quot;), gilt der Pfad vom Root-Verzeichnis aus;</li>
 <li>Im Gegenfall wird die Vorlage auf jede Datei und jeden Ordner angewendet;</li>
 <p>Vorlagenbeispiele:</p>
 <li>/content/photo - Ausschluß des ganzen Ordners /content/photo;</li>
 <li>*.zip - Ausschluß aller Dateien mit der Dateiendung &quot;zip&quot;;</li>
 <li>.access.php - Ausschluß aller Dateien &quot;.access.php&quot;;</li>
 <li>/files/download/*.zip - Ausschluß aller Dateien mit der Dateiendung &quot;zip&quot; im /files/download Ordner;</li>
 <li>/files/d*/*.ht* - Ausschluß der Dateien aus den Ordner, die mit &quot;/files/d&quot anfangen und Dateiendungen, die mit &quot;ht&quot; anfangen.</li>";
$MESS["MAIN_DUMP_ERROR"] = "Fehler";
$MESS["ERR_EMPTY_RESPONSE"] = "Fehler auf der Serverseite: Es wurde eine leere Antwort erhalten. Wenden Sie sich an Ihren Hosting-Anbieter wegen des Problems im Fehlerprotokoll nach Anfragedatum: #DATE#";
$MESS["DUMP_NO_PERMS"] = "Es gibt keinen Speicherplatz mehr frei oder Sie haben keine Rechte, um auf dem Server eine Sicherungskopie zu erstellen";
$MESS["DUMP_NO_PERMS_READ"] = "Fehler beim Öffnen des Archivs zum Lesen";
$MESS["DUMP_DB_CREATE"] = "Dumperstellung für die Datenbank";
$MESS["DUMP_CUR_PATH"] = "Aktueller Pfad:";
$MESS["INTEGRITY_CHECK"] = "Integritätsprüfung";
$MESS["CURRENT_POS"] = "Aktuelle Position:";
$MESS["TIME_LEFT"] = ", ungefähr verbliebene Zeit #TIME#";
$MESS["STEP_LIMIT"] = "Schrittdauer:";
$MESS["DISABLE_GZIP"] = "Archivkomprimierung ausschalten (reduziert Prozessorbelastung):";
$MESS["INTEGRITY_CHECK_OPTION"] = "Wenn abgeschlossen, die Archivintegrität prüfen:";
$MESS["MAIN_DUMP_DB_PROC"] = "Dump der Datenbank komprimieren";
$MESS["TIME_SPENT"] = "Zeit verstrichen";
$MESS["TIME_H"] = "St.";
$MESS["TIME_M"] = "Min.";
$MESS["TIME_S"] = "Sek.";
$MESS["MAIN_DUMP_FOLDER_ERR"] = "Der Ordner #FOLDER# ist schreibgeschützt.";
$MESS["MAIN_DUMP_NO_CLOUDS_MODULE"] = "Das Modul der Cloud-Speicher ist nicht installiert";
$MESS["MAIN_DUMP_INT_CLOUD_ERR"] = "Fehler der Initialisierung des Cloud-Speichers. Versuchen Sie bitte später erneut.";
$MESS["MAIN_DUMP_ERR_FILE_SEND"] = "Die Datei konnte in die Cloud nicht verschoben werden: ";
$MESS["MAIN_DUMP_ERR_OPEN_FILE"] = "Die Datei konnte zum Lesen nicht geöffnet werden: ";
$MESS["MAIN_DUMP_SUCCESS_SENT"] = "Das Archiv wurde in den Cloud-Speicher erfolgreich verschoben";
$MESS["MAIN_DUMP_SUCCESS_SAVED"] = "Änderungen wurden gespeichert.";
$MESS["MAIN_DUMP_SUCCESS_SAVED_DETAILS"] = "Automatische Datensicherung wird aktiv, nachdem Sie cron konfiguriert haben werden.";
$MESS["MAIN_DUMP_AUTO_NOTE"] = "Benutzen Sie Ihr Hosting Control Panel, um dem cron eine neue Aufgabe zuzuweisen: <b>#SCRIPT#</b>. Empfohlene Häufigkeit: Wöchentlich.";
$MESS["MAIN_DUMP_CLOUDS_DOWNLOAD"] = "Dateien aus den Cloud-Speichern herunterladen";
$MESS["MAIN_DUMP_FILES_DOWNLOADED"] = "Dateien heruntergeladen";
$MESS["MAIN_DUMP_FILES_SIZE"] = "Größe der heruntergeladenen Dateien";
$MESS["MAIN_DUMP_DOWN_ERR_CNT"] = "Dateien beim Herunterladen übersprungen";
$MESS["MAIN_DUMP_FILE_SENDING"] = "Archiv in die Cloud verschieben";
$MESS["MAIN_DUMP_USE_THIS_LINK"] = "Nutzen Sie diesen Link für Übertragung auf einen anderen Server mit";
$MESS["MAIN_DUMP_ERR_COPY_FILE"] = "Die Datei konnte nicht kopiert werden: ";
$MESS["MAIN_DUMP_ERR_INIT_CLOUD"] = "Der Cloud-Speicher konnte nicht angebunden werden";
$MESS["MAIN_DUMP_ERR_FILE_RENAME"] = "Fehler beim Umbenennen der Datei: ";
$MESS["MAIN_DUMP_ERR_NAME"] = "Der Archivname kann nur lateinischen Buchstaben, Ziffern, Bindestrich und Punkt enthalten";
$MESS["MAIN_DUMP_FILE_SIZE1"] = "Archivgröße";
$MESS["MAIN_DUMP_LOCATION"] = "Platzierung";
$MESS["MAIN_DUMP_PARTS"] = "Teile: ";
$MESS["MAIN_DUMP_LOCAL"] = "lokal";
$MESS["MAIN_DUMP_GET_LINK"] = "Link für Übertragung anfordern";
$MESS["MAIN_DUMP_SEND_CLOUD"] = "In die Cloud verschieben ";
$MESS["MAIN_DUMP_SEND_FILE_CLOUD"] = "Archiv in den Cloud-Speicher verschieben";
$MESS["MAIN_DUMP_RENAME"] = "Umbenennen";
$MESS["MAIN_DUMP_ARC_NAME_W_O_EXT"] = "Archivname ohne Erweiterung";
$MESS["MAIN_DUMP_ARC_NAME"] = "Archivname ";
$MESS["MAIN_DUMP_ARC_LOCATION"] = "Archiv-Platzierung: ";
$MESS["MAIN_DUMP_LOCAL_DISK"] = "auf der Festplatte";
$MESS["MAIN_DUMP_EVENT_LOG"] = "Event-Protokoll";
$MESS["MAIN_DUMP_ENC_PASS_DESC"] = "Das Archivpasswort muss mindestens 6 Zeichen enthalten.";
$MESS["MAIN_DUMP_EMPTY_PASS"] = "Archivpasswort wurde nicht angegeben.";
$MESS["MAIN_DUMP_NOT_INSTALLED"] = "Das PHP-Modul Mcrypt ist nicht installiert.";
$MESS["MAIN_DUMP_NOT_INSTALLED_HASH"] = "Das PHP-Modul Hash ist nicht installiert.";
$MESS["MAIN_DUMP_NO_ENC_FUNCTIONS"] = "Verschlüsselung ist nicht möglich. Wenden Sie sich bitte an Ihren Systemadministrator.";
$MESS["MAIN_DUMP_ENABLE_ENC"] = "Archiv der Datensicherung verschlüsseln";
$MESS["MAIN_DUMP_ENC_PASS"] = "Archivpasswort (mindestens 6 Zeichen):";
$MESS["MAIN_DUMP_SAVE_PASS"] = "Stellen Sie bitte sicher, dass Ihr Passwort in einem sicheren Ort aufbewahrt wird. Sie werden die Dateien aus dem Archiv nicht entpacken können, wenn Ihr Passwort verloren geht.";
$MESS["MAIN_DUMP_SAVE_PASS_AUTO"] = "Das von Ihnen definierte Passwort wird verschlüsselt und lokal gespeichert. Ihr Lizenzschlüssel wird als Verschlüsselungsparameter benutzt. Es wird ausdrücklich empfohlen, das Passwort mindestens einmal im Monat zu ändern.";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE"] = "Maximale Größe einer Archiv-Einheit (MB):";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_VALUES"] = "mögliche Werte: von 11 bis 2047";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_INFO"] = "PHP beschränkt die Größe eines archivierten Dateiteils auf max. 2 GB. Benutzen Sie keine Werte über 200 MB, da es zu der erhöhten Zeit für Archivieren und Extrahieren führt. Optimaler Wert ist 100 MB.";
$MESS["DUMP_MAIN_SESISON_ERROR"] = "Ihre Sitzung ist abgelaufen. Laden Sie die Seite neu.";
$MESS["DUMP_MAIN_ERROR"] = "Fehler! ";
$MESS["DUMP_MAIN_REGISTERED"] = "Angemeldet";
$MESS["DUMP_MAIN_EDITION"] = "Edition";
$MESS["DUMP_MAIN_ACTIVE_FROM"] = "Aktiv von";
$MESS["DUMP_MAIN_ACTIVE_TO"] = "Aktiv bis";
$MESS["DUMP_MAIN_ERR_GET_INFO"] = "Auf dem Update-Server wurden keine Informationen zum Lizenzschlüssel gefunden.";
$MESS["DUMP_MAIN_BITRIX_CLOUD"] = "Bitrix Cloud-Speicher";
$MESS["DUMP_MAIN_BITRIX_CLOUD_DESC"] = "Bitrix Cloud-Speicher";
$MESS["DUMP_MAIN_ERR_PASS_CONFIRM"] = "Eingegebene Passwörter stimmen nicht überein";
$MESS["DUMP_MAIN_PASSWORD_CONFIRM"] = "Passwort bestätigen:";
$MESS["DUMP_MAIN_MAKE_ARC"] = "Datensicherung";
$MESS["MAKE_DUMP_FULL"] = "Eine vollständige Datensicherung durchführen";
$MESS["DUMP_MAIN_PARAMETERS"] = "Parameter";
$MESS["DUMP_MAIN_EXPERT_SETTINGS"] = "Experteneinstellungen";
$MESS["DUMP_MAIN_ENC_ARC"] = "Archiv-Verschlüsselung";
$MESS["DUMP_MAIN_SITE"] = "Website:";
$MESS["DUMP_MAIN_IN_THE_CLOUD"] = "In der Cloud";
$MESS["DUMP_MAIN_IN_THE_BXCLOUD"] = "im &quot;Bitrix Cloud-Speicher&quot;";
$MESS["DUMP_MAIN_ENABLE_EXPERT"] = "Experteneinstellungen der Datensicherung aktivieren";
$MESS["DUMP_MAIN_CHANGE_SETTINGS"] = "Eine eventuelle Änderung von Experteneinstellungen kann dazu führen, dass ein nicht vollständiges Archiv erstellt wird, welches auch nicht wiederhergestellt werden kann. Mögliche Folgen dieser Änderung müssen Ihnen absolut klar sein.";
$MESS["DUMP_MAIN_ARC_CONTENTS"] = "Inhalte der Sicherungskopie";
$MESS["DUMP_MAIN_DOWNLOAD_CLOUDS"] = "Daten aus den Cloud-Speichern ins Archiv herunterladen";
$MESS["DUMP_MAIN_ARC_DATABASE"] = "Datenbank archivieren";
$MESS["DUMP_MAIN_DB_EXCLUDE"] = "Aus der Datenbank ausschließen";
$MESS["DUMP_MAIN_ARC_MODE"] = "Archivierungsmodus";
$MESS["DUMP_MAIN_MULTISITE_INFO"] = "Wenn Sie mehrere Websites zum Archivieren auswählen, wird die erste Website in Archiv-Root gespeichert, während öffentliche Seiten anderer Websites in <b>/bitrix/backup/sites</b> gespeichert werden. Wenn Sie Daten wiederherstellen werden, werden Sie sie in die erforderlichen Zielorte manuell verschieben und Symbolische Links erstellen müssen.";
$MESS["BCL_BACKUP_USAGE"] = "Benutzter Speicherplatz: #USAGE# von #QUOTA#.";
$MESS["DUMP_BXCLOUD_NA"] = "&quot;Bitrix Cloud-Speicher&quot; ist nicht verfügbar.";
$MESS["DUMP_ERR_NON_ASCII"] = "Die Zeichen der nationalen Alphabete sind nicht zulässig, damit keine Probleme mit der Datenwiederherstellung auftreten.";
$MESS["DUMP_MAIN_BXCLOUD_INFO"] = "&quot;Bitrix Inc.&quot; bietet einen kostenlosen Speicherplatz im Bitrix Cloud-Speicher zur Aufbewahrung von drei Sicherungskopien für jeweils eine aktive Lizenz an. Der Zugriff auf die Sicherungskopien wird nach Lizenzschlüssel und Passwort gewährt. Ohne Passwort kann niemand (auch Bitrix Mitarbeiter nicht) auf Ihre Daten zugreifen.";
$MESS["MAIN_DUMP_BXCLOUD_ENC"] = "Bei der Platzierung der Sicherungskopie im &quot;Bitrix Cloud-Speicher&quot; kann die Verschlüsselung nicht deaktiviert werden.";
$MESS["MAIN_DUMP_FROM"] = "von";
$MESS["DUMP_ERR_BIG_BACKUP"] = "Die Größe der Sicherungskopie überschreitet Ihr Limit bei Bitrix Cloud. Das Archiv wurde auf dem lokalen Server gespeichert.";
$MESS["DUMP_RETRY"] = "Erneut versuchen";
$MESS["MAIN_DUMP_ERR_DELETE"] = "Sie können Dateien, die in der Bitrix Cloud gespeichert werden, nicht manuell löschen. Die  alten Archive werden durch neue ersetzt, sobald Sie eine neue Sicherungskopie erstellen und sie hochladen.";
$MESS["ERR_NO_BX_CLOUD"] = "Das Modul zur Unterstützung des Cloud-Services ist nicht installiert.";
$MESS["ERR_NO_CLOUDS"] = "Das Modul des Cloud-Speichers ist nicht installiert.";
$MESS["DUMP_DELETE_ERROR"] = "Die Datei #FILE# kann nicht gelöscht werden.";
$MESS["DUMP_MAIN_AUTO_PARAMETERS"] = "Script-Parameter der automatischen Durchführung.";
$MESS["DUMP_MAIN_SAVE"] = "Speichern";
$MESS["DUMP_ADDITIONAL"] = "Zusätzliche Parameter";
$MESS["DUMP_DELETE"] = "Lokale Sicherungskopien löschen";
$MESS["DUMP_NOT_DELETE"] = "nie";
$MESS["DUMP_CLOUD_DELETE"] = "nach erfolgreicher Übertragung in die Cloud";
$MESS["DUMP_RM_BY_TIME"] = "in #TIME# Tagen nach Erstellung";
$MESS["DUMP_RM_BY_CNT"] = "wenn es mehr als #CNT# Sicherungskopien gibt";
$MESS["DUMP_RM_BY_SIZE"] = "wenn die Gesamtgröße #SIZE# GB überschreitet";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME"] = "Nächste Durchführung geplant am: ";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TODAY"] = "Der nächste Start ist geplant für heute: ";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TOMORROW"] = "Der nächste Start ist geplant für morgen:";
$MESS["MAIN_DUMP_SHED"] = "Zeitplan";
$MESS["MAIN_DUMP_PERIODITY"] = "Durchführen:";
$MESS["MAIN_DUMP_PER_1"] = "täglich";
$MESS["MAIN_DUMP_PER_2"] = "alle zwei Tage";
$MESS["MAIN_DUMP_PER_3"] = "alle drei Tage";
$MESS["MAIN_DUMP_PER_5"] = "alle fünf Tage";
$MESS["MAIN_DUMP_PER_7"] = "wöchentlich";
$MESS["MAIN_DUMP_PER_14"] = "alle zwei Wochen";
$MESS["MAIN_DUMP_PER_21"] = "alle drei Wochen";
$MESS["MAIN_DUMP_PER_30"] = "monatlich";
$MESS["MAIN_DUMP_DELETE_OLD"] = "Veraltete Archive löschen";
$MESS["MAIN_DUMP_SHED_TIME_SET"] = "Diese Option ist nur verfügbar, wenn System-Agenten cron benutzen. Im anderen Fall werden Sie Ihr Hosting Control Panel benutzen müssen, damit das Skript <b>/bitrix/modules/main/tools/backup.php</b> wie erforderlich durchgeführt wird.";
$MESS["MAIN_DUMP_AUTO_LOCK"] = "Automatische Datensicherung wurde gestartet";
$MESS["MAIN_DUMP_AUTO_LOCK_TIME"] = "Zeit nach dem Start verstrichen: #TIME#";
$MESS["AUTO_LOCK_EXISTS_ERR"] = "Die am #DATETIME# automatisch gestartete Datensicherung ist wegen eines Fehlers fehlgeschlagen. Überprüfen Sie bitte das Serverprotokoll, um den Fehler festzustellen.";
$MESS["AUTO_EXEC_METHOD"] = "Starten:";
$MESS["AUTO_EXEC_FROM_BITRIX"] = "mit dem Bitrix Cloud-Service";
$MESS["AUTO_EXEC_FROM_CRON"] = "mit Agent via Cron";
$MESS["AUTO_EXEC_FROM_MAN"] = "mit direktem Aufruf von #SCRIPT#";
$MESS["AUTO_URL"] = "Website-URL";
$MESS["DUMP_AUTO_TAB"] = "Autostart";
$MESS["MAIN_DUMP_AUTO_WARN"] = "Aktivieren Sie <a href=\"#LINK#\">automatische Datensicherung</a>, damit Sie die aktuellste Datenversion für die Wiederherstellung zur Verfügung haben.";
$MESS["DUMP_LOCAL_TIME"] = "(Lokale Serverzeit)";
$MESS["DUMP_CHECK_BITRIXCLOUD"] = "Der Aufgabenstatus kann auf der Seite von <a href=\"#LINK#\">Bitrix Cloud Service</a> überprüft werden.";
$MESS["DUMP_WARN_NO_BITRIXCLOUD"] = "Automatische Datensicherung kann nicht aktiviert werden. Installieren Sie bitte das Modul Bitrix Cloud Service oder benutzen Sie Cron, um Agenten zu starten.";
$MESS["DUMP_SAVED_DISABLED"] = "Automatische Datensicherung wurde deaktiviert.<br>Datensicherungen werden nur dann durchgeführt, wenn Script /bitrix/modules/main/tools/backup.php manuell ausgeführt wird.";
$MESS["DUMP_AUTO_INFO_OFF"] = "Automatische Datensicherung wurde deaktiviert";
$MESS["DUMP_AUTO_INFO_ON"] = "Automatische Datensicherung wurde aktiviert";
$MESS["DUMP_BTN_AUTO_DISABLE"] = "Automatische Datensicherung deaktivieren";
$MESS["DUMP_BTN_AUTO_ENABLE"] = "Automatische Datensicherung aktivieren";
$MESS["DUMP_AUTO_INFO_TEXT"] = "<b>Automatische Datensicherung</b>

Es wird empfohlen, automatische Datensicherung zu aktivieren, damit Sie die aktuellste Datenkopie für die Wiederherstellung zur Verfügung haben, falls ein Hardware- oder Software-Fehler auftritt. 

Bitrix Cloud Monitor wird Sicherungskopien erstellen, indem zu einer speziellen URL auf Ihrer Website zum angegebenen Zeitpunkt navigiert wird. Die URL enthält eine geheime ID, die es erlaubt, eine Sicherungskopie zu erstellen, aber keinen Zugriff darauf gewährt. Der Zugriff auf den administrativen Bereich Ihrer Website ist nicht erforderlich und kann über IP blockiert werden.

Standardmäßig wird die Sicherungskopie in verschlüsselter Form in der Bitrix Cloud in einigen Exemplaren gespeichert. Das ist die sicherste Möglichkeit, Ihre Daten abzuspeichern.

Wenn der Bitrix Cloud Service nicht verfügbar ist, aber Agenten via Cron nach einem Zeitplan laufen, wird die Sicherungskopie lokal erstellt.
";
$MESS["DUMP_TABLE_BROKEN"] = "Die Tabelle #TABLE# wurde infolge von einem internen MySQL Fehler zerstört. Benutzen Sie <a href=\"/bitrix/admin/site_checker.php?tabControl_active_tab=edit1\" target=_blank>Systemtest</a>, um die Tabelle komplett oder um lediglich die Tabellenstruktur wiederherzustellen.";
$MESS["DUMP_ERR_AUTO"] = "Fehler bei Erstellung einer Sicherungskopie. <a href=\"#LINK#\">Details anzeigen</a>";
?>