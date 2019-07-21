
#ifndef _BS_UINODE_H_
#define _BS_UINODE_H_

#include <string>
#include <vector>

#include "bsUIRect.hpp"
#include "bsUISignalHandler.hpp"


class bsUINode : public bsUIRect, public bsUISignalHandler
{
 public:
	bsUINode(const char *name) : m_node_name(name);
	virtual ~bsUINode();

	/**
	 * Add a new node to the list of children.
	 * \param node The node to add.
	 */
	int addNode(bsUINode *node);

	/**
	 * Remove a new node from the list of children.
	 * \param node The node to remove.
	 */
	int removeNode(bsUINode *node);

	/**
	 * Set the parent node.
	 * \param node The parent node to set.
	 */
	int setParent(bsUINode *node);

 private:


 protected:
	std::string m_node_name;			/** the name of the UINode. */
	bsUIRect rect;				/** The rectangle containing the UINode. */
	bsUINode *parent = nullptr;		/** Pointer to the parent element. */
	std::vector<bsUINode*> children;	/** std::vector to store all child nodes. */

};

};	/** namespace std */
};  /** namespace ui */



#endif
