.class public Lcom/softwinner/launcher/ui/MenuItem;
.super Landroid/widget/Button;
.source "MenuItem.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x6

    iput v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->height:I

    .line 15
    const-string v0, "MenuItem"

    iput-object v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x6

    iput v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->height:I

    .line 15
    const-string v0, "MenuItem"

    iput-object v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x6

    iput v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->height:I

    .line 15
    const-string v0, "MenuItem"

    iput-object v0, p0, Lcom/softwinner/launcher/ui/MenuItem;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, -0x749d3

    .line 35
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .local v0, mPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/softwinner/launcher/ui/MenuItem;->height:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getHeight()I

    move-result v4

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p0, v5}, Lcom/softwinner/launcher/ui/MenuItem;->setTextColor(I)V

    .line 52
    :goto_0
    return-void

    .line 46
    .end local v0           #mPaint:Landroid/graphics/Paint;
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .restart local v0       #mPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/softwinner/launcher/ui/MenuItem;->height:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/MenuItem;->getHeight()I

    move-result v4

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .restart local v1       #rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p0, v6}, Lcom/softwinner/launcher/ui/MenuItem;->setTextColor(I)V

    goto :goto_0
.end method
