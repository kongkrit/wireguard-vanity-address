# wireguard-vanity-address
creates wireguard vanity public key in docker. wireguard-vanity-address has been precompiled from https://github.com/warner/wireguard-vanity-address to keep the docker image size small.

### Usage: interactive

- `docker run -it --rm --network none -e NAME="john" kongkrit/wireguard-vanity-address` and it will print working wireguard public key that contains the word **john**.
- You may want to limit CPU time that docker use. For example, suppose you have a 4-core system, adding flag `--cpus 2` will limit docker to "2 CPUs equivalent" of total CPU usage.
- **The longer the name is, the slower the search.** Practical length is probably around 4 characters if you don't want to burn too much CPU time.

- Output from docker will look something like this:
```
searching for 'john' in pubkey[0..10], one of every 149796 keys should match
one trial takes 24.8 us, CPU cores available: 4
est yield: 930.2 ms per key, 1.07 keys/s
hit Ctrl-C to stop
private yJ3iwTOLA5OkePDIcsvLSzNZhMqKFI01WUSoRj43v0o=  public I5kDRJoHNxDTAafH8EQObGYXJU7wx7o4KI71OyNx5iI=
private kNA40NWUmphYvAiueYBAVbKGI+J11Lv2/YTQlF3eino=  public AjoHn6tmLI6cBLm/I3bROcI/wIL/cPCmhnVap4l1/j8=
private qAcF3HeQ8/DE3XFW/FWdfnHkFF8GVCxc+Ar9PQG4unY=  public zjmxOJohNjAIknZJTh+sjlJL+Nh/WaNLJ3VB5Jd+BFA=
private EEc8m6rzixQ2bOXjG7/1ZLFsggp03bRug3WlhUcQD08=  public f/ujohNLlL+RLUVsIfWNhMNBWPCWCdnES5H5AD1iwFc=
private AFKbxJl/OrNMVMBj9EjW+h/YdnNKy0PYbt0EwP52O0w=  public JdDvjoHN32QDJdD3VJhORvBaKNnX9kDA0QUlx19Rlkg=
private oPfaEvZil2u5jxPieV32Hx6qrn0rzA0mHsdV5pfzXFI=  public 3wJohn9h27f3KA2RJ7dzVi/cTPa5xDB+SdzfZKo8pSQ=
private 6M9Je7aO+DLEjaWMIxy/x/2zRQhiBo0IPbaMPzYrVFY=  public Vuqo2DjoHNdzSVjjrMRH24ZS+rGW5O965LdPX4x4sXg=
private 6MmDr0u+LtM4wNtORKMTSlRxldwkYCO9mLV08mDuzU4=  public NjoHNY6U03+VFa8QxipMl4nC3wJ+wgEK4LyaFK/CTCU=
```

- Instead of using `docker run` with `-it` flag, you can use `-d` flag as well, but you will have to monitor the log file yourself. The container will run forever until you manually stop it.

### Todo:

- Add log file support with auto-truncating according to some rule
