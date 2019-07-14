# Ansible in Docker

Switch easily between different version of Ansible by pulling the version of Ansible that you want to use. Check the `tags` page.

## How to get started

Use the following command to start a container. When started you can use the `ansible-playbook` command to run your playbooks:

```
docker run --rm -it \
    -v $(pwd):/etc/ansible \
    jeroenslot/ansible:latest bash
```

### SSH keys
If you need to run Ansible that needs specific ssh-keys, use the following command to mount your ssh-keys:

```
docker run --rm -it \
    -v ~/.ssh:/root/.ssh \
    -v $(pwd):/etc/ansible \
    jeroenslot/ansible:latest bash
```

## Contribution

Feel free to fork and contribute, or submit an issue.