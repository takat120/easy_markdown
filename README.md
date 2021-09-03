# easy_markdown

**Transform markdown files into a website with one shell script.**

## Tips

- Easy_markdown **requires** [**Pandoc**](https://pandoc.org/) to run a shell script. 

- You have to set **"public"** directory as a **public** base directory.

- **Markdown Editor** (such as [**Mark Text**](https://marktext.app/), [**Ghostwriter**](https://wereturtle.github.io/ghostwriter/) and so on) encourages you to write & edit & manage markdown files with ease.

- Filename of markdown cannot contain **spaces and hyphens**.

## Setup

1. Edit **settings.sh** file (set website name, directory path etc.)

2. Add & Edit markdown files (*.md) in "**md**" directory, media files in "**public/media**" directory.

3. Open Terminal, then run "**chmod 755** /path/to/directory/**make.sh**". **You have to replace "/path/to/directory"** with the path to easy_markdown directory.

4. Run **make.sh**.

5. If you want to submit to search engines, **delete robots.txt** in "**public**" directory.

6. Upload "**public**" directory or git push.



## License

Easy_markdown is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
