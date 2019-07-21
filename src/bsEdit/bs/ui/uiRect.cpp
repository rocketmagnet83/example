
#include "uiRect.hpp"


uiRect::uiRect(uiRect *r, uiRect *root=nullptr)
{
	m_x1 = r->m_x1;
	m_y1 = r->m_y1;
	m_x2 = r->m_x2;
	m_y2 = r->m_y2;
	if(root) m_root = root;
}

uiRect::uiRect(int x1, int y1, int x2, int y2, uiRect *root)
{
    /** make sure the rectangle is aligned right x1,y1 is left upper coordinate of the rectangle */
    if(x1>y2) y2=x2;
    if(y1>y2) y2=y1;

    m_x1 = x1;
    m_y2 = y2;
    m_x2 = x2;
    m_y2 = y2;

	if(root) m_root = root;
}

/**
 * Set the left upper position of the rectangle.
 * \param posx The new upper left x position of the rectangle.
 * \param posy The new upper left y position of the rectangle.
 */
void uiRect::setPos(int posx, int posy)
{
}

/**
 * Get the left upper position of the rectangle.
 * \param posx The upper left x position.
 * \param posy The upper left y position.
 */
void uiRect::getPos(int &posx, int &posy) const
{
	posx = m_x1;
	posy = m_y1;
}

/**
 * Set the size of the rectangle.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void uiRect::setWidth(int width)
{
 
}

/** Get the height of the rectangle.
 * \param width The width of the rectangle is stored here.
 */
void uiRect::getWidth(int &width) const
{
    width = m_x2-m_y1;
}

/**
 * Set the height of the rectangle, if a root element is given the uiRect size stays inside the 
 * root element.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void uiRect::setHeight(int &height) 
{
    height = m_x2-m_x1;
}

/** Get the height of the rectangle.
 * \param height The new height of the rectangle.
 */
void uiRect::getHeight(int &height) const
{
    height = m_y2-m_y1;
}

