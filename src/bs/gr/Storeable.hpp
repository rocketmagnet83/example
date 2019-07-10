
#ifndef BS_SYS_STOREABLE_HEADER
#define BS_SYS_STOREABLE_HEADER


class Storeable {
public:
	virtual void load() = 0;
	virtual void save() = 0;

private:

protected:


};

#endif
