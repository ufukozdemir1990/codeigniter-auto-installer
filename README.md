# Codeigniter Auto Installer

### Install
1. Create `database` and `user` on **CPanel** or **Plesk Panel** (On the server run) 
2. Download Codeigniter, Unzip the downloaded file. You did the zip in the Codeigniter files again and put it in the root directory of your Codeigniter install (as a sibling to the /install folder).
3. If your Codeigniter application folder is a sibling of your system folder instead of a child (this is common), do a find/replace to replace 'system/application' with 'application' in each of this project's files.
4. Make an SQL dump of your desired database structure and initial data and paste it into `install/install_db.sql`

**Base:**
- install (automatic installation files)
- index.php (welcome file)
- codeigniter.zip (file)

Visit http://example.com/install/ and see how it goes.

> **Note: The compressed file must have a .zip extension**
