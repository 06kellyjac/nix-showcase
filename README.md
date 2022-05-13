# Important bits

## What is nix/nixpkgs/nixos

![nix holy trinity](https://christine.website/static/talks/nixos-pain/012.d.avif)[^1]

## Why use any of it?

![nix the rocket powered toy wagon](https://christine.website/static/talks/nixos-pain/008.d.avif)[^1]

## Commands

enable the new unstable interface & flakes

```conf
experimental-features = nix-command flakes
```

Play along within docker

```bash
docker run -it nixos/nix
```

Play along with a VM

ISOs - graphical and minimal:

<https://nixos.org/download.html#nixos-iso>

Latest with calamares!:

<https://hydra.nixos.org/job/nixos/trunk-combined/nixos.iso_gnome.x86_64-linux>

## Useful Links

|                                                                       link | description                              |
| -------------------------------------------------------------------------: | ---------------------------------------- |
|                                                <https://search.nixos.org/> | Package and Config Options search        |
|                                                     <https://mynixos.com/> | ^ Alternative                            |
|             [repology](https://repology.org/projects/?inrepo=nix_unstable) | Package search                           |
|                                            <http://nur.nix-community.org/> | NUR search                               |
|            [sourcegraph](https://sourcegraph.com/github.com/NixOS/nixpkgs) | sourcegraph - `nixpkgs` code search      |
|                                               <https://search.nix.gsc.io/> | hound - `nixpkgs` code search            |
|                                                <https://status.nixos.org/> | CI/CD Status                             |
|                                                         <https://zh.fail/> | Failures ahead of next stable release    |
|                                                        <https://r13y.com/> | Reproducibility status                   |
| [arewehackersyet](https://jjjollyjim.github.io/arewehackersyet/index.html) | Progress adding kali packages to nixpkgs |

![Graph of repository count against package "freshness"](https://repology.org/graph/map_repo_size_fresh.svg)[^2]

[^1]: [How Nix and NixOS Get So Close to Perfect - Xe - PackagingCon 2021](https://christine.website/talks/nixos-pain-2021-11-10)
[^2]: <https://repology.org/repositories/graphs>
