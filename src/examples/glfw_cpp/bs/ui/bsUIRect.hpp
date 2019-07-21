
#ifndef _BS_UIRECT_H_
#define _BS_UIRECT_H_


/**
 * \author Steven Truppe
 * \copyright Copyright (c) by Steven Truppe
 *
 * A simple rectangle, parent class for bsUINode.
 */
class bsUIRect
{
public:
    bsUIRect(int x1, int y1, int x2, int y2);
    ~bsUIRect();

    /**
     * Set the position of the rectangle.
     * \param posx The new upper left x position of the rectangle.
     * \param posy The new upper left y position of the rectangle.
     */
    void setPos(int posx, int posy);

    /**
     * Get the position of the rectangle.
     * \param posx The upper left x position.
     * \param posy The upper left y position.
     */
    void getPos(int &posx, int &posy) const;

    /**
     * Set the width of the rectangle.
     * \param width Set the width of the rectangle.
     */
    void setWidth(int width);

    /**
     * Get the width of the rectangle.
     * \param width Get the width of the rectangle.
     */
    void getWidth(int &width) const;

    /**
     * Set the height of the rectangle.
     * \param height The height of the rectangle.
     */
    void setHeight(int &height);
    
    /**
     * Get the height of the rectangle.
     * \param height The height of the rectangle.
     */
    void getHeight(int &height) const;
   
private:

protected:
    int m_x1,m_y1;
    int m_x2,m_y2;
};

#endif
