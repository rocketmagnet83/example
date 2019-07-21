
#include "bsUIRect.hpp"


bsUIRect::bsUIRect(int x1, int y1, int x2, int y2)
{
    /** make sure the rectangle is aligned right x1,y1 is left top of the rectangle */
    if(x1>y2) y2=x2;
    if(y1>y2) y2=y1;

    m_x1 = x1;
    m_y2 = y2;
    m_x2 = x2;
    m_y2 = y2;

}

/**
 * Set the position of the rectangle.
 * \param posx The new upper left x position of the rectangle.
 * \param posy The new upper left y position of the rectangle.
 */
void bsUIRect::setPos(int posx, int posy)
{
    
}

/**
 * Get the position of the rectangle.
 * \param posx The upper left x position.
 * \param posy The upper left y position.
 */
void bsUIRect::getPos(int &posx, int &posy) const
{
}

/**
 * Set the size of the rectangle.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void bsUIRect::setWidth(int width)
{
 
}

void bsUIRect::getWidth(int &width) const
{
    width = m_x2-m_y1;
}

/**
 * Set the size of the rectangle.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void bsUIRect::setHeight(int &height)
{
    height = m_x2-m_x1;
}



void bsUIRect::getHeight(int &height) const
{
    height = m_y2-m_y1;
}

