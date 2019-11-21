class Provider:
    def __init__(self):
        self.msg_queue = []
        self.subscribers = {}

class Publisher:

    def publish(self, msg):
        self.provider.notify(msg)


class Subscriber:
    def __init__(self, name):
        self.name = name
        self.provider = provider

    def subscribe(self, msg):
        self.provider.subscribe(msg, self)

    def unsubscribe(msg):
        self.provider.unsubscribe(msg, self)

    def run(self, msg):
        print("{} got {}".format(self.name, msg))


def main():
    """
    >>> provider = Provider()
    >>> fftv = Publisher(provider)
    >>> jim = Subscriber("jim", provider)
    >>> jim.subscribe("cartoon")
    >>> jack = Subscriber("jack", provider)
    >>> jack.subscribe("music")
    >>> gee = Subscriber("gee", provider)
    >>> gee.subscribe("movie")
    >>> vani = Subscriber("vani", provider)
    >>> vani.subscribe("movie")
    >>> vani.unsubscribe("movie")
    >>> fftv.publish("cartoon")
    >>> fftv.publish("music")
    >>> fftv.publish("ads")
    >>> fftv.publish("movie")
    >>> fftv.publish("cartoon")
    >>> fftv.publish("cartoon")
    >>> fftv.publish("movie")
    >>> fftv.publish("blank")
    >>> provider.update()
    jim got cartoon
    jack got music
    gee got movie
    jim got cartoon
    jim got cartoon
    gee got movie
    """


if __name__ == "__main__":
    import doctest
    doctest.testmod()
