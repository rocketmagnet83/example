
#ifndef _BS_UINODE_H_
#define _BS_UINODE_H_

#include <string>
#include <vector>

#include "uiRect.hpp"


/**
 * Interface class for all user interface elements.
 */
class uiNode : public uiRect
{
 public:
	uiNode(const char *name) : uiRect()
	{}
	virtual ~uiNode();

	/**
	 * Add a new node to the list of children.
	 * \param node The node to add.
	 */
	int addNode(uiNode *node);

	/**
	 * Remove a new node from the list of children.
	 * \param node The node to remove.
	 */
	int removeNode(uiNode *node);

	/**
	 * Set the parent node.
	 * \param node The parent node to set.
	 */
	int setParent(uiNode *node);

 private:


 protected:
	std::string m_nodeName;			/** the name of the UINode. */
	uiRect rect;					/** The rectangle containing the UINode. */
	uiNode *parent = nullptr;		/** Pointer to the parent element. */
	std::vector<uiNode*> children;	/** std::vector to store all child nodes. */

};


#endif
