.class public Lcom/softwinner/launcher/ui/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/ui/CellLayout$CellInfo;,
        Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;,
        Lcom/softwinner/launcher/ui/CellLayout$WidgetMenu;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private final mCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mDrawCell:Z

.field private mDrawCellRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLastDownOnOccupiedCell:Z

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPortrait:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/softwinner/launcher/ui/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/softwinner/launcher/ui/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 95
    new-instance v1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    .line 97
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellXY:[I

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 103
    iput-boolean v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 1134
    iput-boolean v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCell:Z

    .line 1135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCellRect:Landroid/graphics/RectF;

    .line 1136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPaint:Landroid/graphics/Paint;

    .line 117
    sget-object v1, Lcom/softwinner/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    .line 121
    const-string v1, "Cell"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    .line 125
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisEndPadding:I

    .line 127
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    .line 129
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisEndPadding:I

    .line 132
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 133
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-virtual {p0, v5}, Lcom/softwinner/launcher/ui/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_0

    .line 140
    iget-boolean v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 141
    iget v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 148
    return-void

    .line 143
    :cond_1
    iget v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/ui/CellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 52
    invoke-static/range {p0 .. p5}, Lcom/softwinner/launcher/ui/CellLayout;->findIntersectingVacantCells(Lcom/softwinner/launcher/ui/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/softwinner/launcher/ui/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 347
    invoke-static {}, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->acquire()Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 348
    .local v0, cell:Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 349
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 350
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 351
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 352
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 353
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 354
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 356
    :cond_0
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 357
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 358
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 360
    :cond_1
    iget-object v1, p1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/softwinner/launcher/ui/CellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 293
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 294
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 295
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 296
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 297
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->clearVacantCells()V

    .line 299
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 305
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 854
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 855
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 856
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 855
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 854
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 860
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v1

    .line 861
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 862
    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 868
    .local v3, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    iget v4, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_3

    if-ge v4, p1, :cond_3

    .line 869
    iget v5, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    if-ge v5, p2, :cond_2

    .line 870
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 869
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 868
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 861
    .end local v5           #y:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 874
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    .line 311
    invoke-static {p0, p4}, Lcom/softwinner/launcher/ui/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 313
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 314
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/softwinner/launcher/ui/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 316
    invoke-static {p0, p1, p2, p3, p4}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 317
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 321
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 322
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/softwinner/launcher/ui/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 324
    invoke-static {p0, p1, p2, p3, p4}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 325
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 329
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 330
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/softwinner/launcher/ui/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 332
    invoke-static {p0, p1, p2, p3, p4}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 333
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 337
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_3

    .line 338
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/softwinner/launcher/ui/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 340
    invoke-static {p0, p1, p2, p3, p4}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 341
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 344
    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 814
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 815
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 816
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 817
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 818
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 819
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 820
    :goto_5
    if-nez v0, :cond_3

    .line 824
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 825
    aput v3, p0, v6

    .line 826
    aput v4, p0, v5

    .line 832
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v6

    .line 816
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 819
    goto :goto_5

    .line 818
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 817
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 815
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 814
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v6

    .line 832
    goto :goto_6
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 364
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 365
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 369
    :goto_1
    return v1

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 373
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 374
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 378
    :goto_1
    return v1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 174
    move-object v0, p3

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 175
    .local v0, cellParams:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->regenerateId:Z

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 155
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v1

    .line 156
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 475
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    .line 476
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    .line 479
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 480
    const/4 v3, 0x1

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 481
    return-void

    .line 475
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 476
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 16
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 752
    .local v6, portrait:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    .line 753
    .local v2, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    .line 754
    .local v1, cellHeight:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    .line 755
    .local v9, widthGap:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    .line 757
    .local v5, heightGap:I
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    .line 758
    .local v3, hStartPadding:I
    :goto_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    .line 760
    .local v7, vStartPadding:I
    :goto_1
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    .line 761
    .local v8, width:I
    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    .line 763
    .local v4, height:I
    add-int v12, v2, v9

    mul-int v12, v12, p1

    add-int v10, v3, v12

    .line 764
    .local v10, x:I
    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    .line 766
    .local v11, y:I
    int-to-float v12, v10

    int-to-float v13, v11

    add-int v14, v10, v8

    int-to-float v14, v14

    add-int v15, v11, v4

    int-to-float v15, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 767
    return-void

    .line 757
    .end local v3           #hStartPadding:I
    .end local v4           #height:I
    .end local v7           #vStartPadding:I
    .end local v8           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 758
    .restart local v3       #hStartPadding:I
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 883
    instance-of v0, p1, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    return v0
.end method

.method public disableDrawRect()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCell:Z

    .line 1144
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 1145
    return-void
.end method

.method public drawCellRect(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1138
    iget-object v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCellRect:Landroid/graphics/RectF;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/softwinner/launcher/ui/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCell:Z

    .line 1140
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 1141
    return-void
.end method

.method public findAllVacantCells([ZLandroid/view/View;)Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    .locals 10
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 382
    iget-boolean v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 383
    .local v3, portrait:Z
    if-eqz v3, :cond_0

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 384
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 386
    .local v7, yCount:I
    :goto_1
    iget-object v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 388
    .local v2, occupied:[[Z
    if-eqz p1, :cond_3

    .line 389
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2
    if-ge v6, v7, :cond_4

    .line 390
    const/4 v4, 0x0

    .local v4, x:I
    :goto_3
    if-ge v4, v5, :cond_2

    .line 391
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 383
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_0
    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 384
    .restart local v5       #xCount:I
    :cond_1
    iget v7, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 389
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 395
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_3
    invoke-direct {p0, v5, v7, v2, p2}, Lcom/softwinner/launcher/ui/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 398
    :cond_4
    new-instance v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;-><init>()V

    .line 400
    .local v0, cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    const/4 v8, -0x1

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    .line 401
    const/4 v8, -0x1

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    .line 402
    const/4 v8, 0x0

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanY:I

    .line 403
    const/4 v8, 0x0

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanX:I

    .line 404
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 405
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 406
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 407
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 408
    iget-object v8, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    iget v8, v8, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->screen:I

    .line 410
    iget-object v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 412
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_4
    if-ge v4, v5, :cond_7

    .line 413
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_5
    if-ge v6, v7, :cond_6

    .line 414
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_5

    .line 415
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 416
    invoke-static {v1, v5, v7, v2, v0}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/softwinner/launcher/ui/CellLayout$CellInfo;)V

    .line 417
    aget-object v8, v2, v4

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 413
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 412
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 422
    .end local v6           #y:I
    :cond_7
    iget-object v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    .line 427
    return-object v0

    .line 422
    :cond_8
    const/4 v8, 0x0

    goto :goto_6
.end method

.method findNearestVacantArea(IIIILcom/softwinner/launcher/ui/CellLayout$CellInfo;[I)[I
    .locals 16
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 649
    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    .line 650
    .local v3, bestXY:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellXY:[I

    .line 651
    .local v5, cellXY:[I
    const-wide v1, 0x7fefffffffffffffL

    .line 654
    .local v1, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v10, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    if-nez v10, :cond_2

    .line 655
    const/4 v3, 0x0

    .line 684
    .end local v3           #bestXY:[I
    :cond_0
    :goto_1
    return-object v3

    .line 649
    .end local v1           #bestDistance:D
    .end local v5           #cellXY:[I
    :cond_1
    const/4 v10, 0x2

    new-array v3, v10, [I

    goto :goto_0

    .line 659
    .restart local v1       #bestDistance:D
    .restart local v3       #bestXY:[I
    .restart local v5       #cellXY:[I
    :cond_2
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 660
    .local v9, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_5

    .line 661
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;

    .line 664
    .local v4, cell:Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;
    iget v10, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanX:I

    move/from16 v0, p3

    if-ne v10, v0, :cond_3

    iget v10, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->spanY:I

    move/from16 v0, p4

    if-eq v10, v0, :cond_4

    .line 660
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 669
    :cond_4
    iget v10, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v11, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v5}, Lcom/softwinner/launcher/ui/CellLayout;->cellToPoint(II[I)V

    .line 671
    const/4 v10, 0x0

    aget v10, v5, v10

    sub-int v10, v10, p1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int v12, v12, p2

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 673
    .local v6, distance:D
    cmpg-double v10, v6, v1

    if-gtz v10, :cond_3

    .line 674
    move-wide v1, v6

    .line 675
    const/4 v10, 0x0

    iget v11, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v11, v3, v10

    .line 676
    const/4 v10, 0x1

    iget v11, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v11, v3, v10

    goto :goto_3

    .line 681
    .end local v4           #cell:Lcom/softwinner/launcher/ui/CellLayout$CellInfo$VacantCell;
    .end local v6           #distance:D
    :cond_5
    const-wide v10, 0x7fefffffffffffffL

    cmpg-double v10, v1, v10

    if-ltz v10, :cond_0

    .line 684
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 878
    new-instance v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 888
    new-instance v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getBottomPadding()I
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisEndPadding:I

    goto :goto_0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method getLeftPadding()I
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0
.end method

.method public getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 836
    iget-boolean v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 837
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 838
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 839
    .local v6, yCount:I
    :goto_1
    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 841
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/softwinner/launcher/ui/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 843
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 844
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 845
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 846
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 837
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 838
    .restart local v4       #xCount:I
    :cond_1
    iget v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 844
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 850
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method getRightPadding()I
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisEndPadding:I

    goto :goto_0
.end method

.method public getTag()Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    .locals 7

    .prologue
    .line 274
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    .line 275
    .local v0, info:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 276
    iget-boolean v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 277
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 278
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 280
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 281
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/softwinner/launcher/ui/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 283
    iget v1, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/softwinner/launcher/ui/CellLayout;->findIntersectingVacantCells(Lcom/softwinner/launcher/ui/CellLayout$CellInfo;IIII[[Z)V

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDirtyTag:Z

    .line 287
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 277
    .restart local v6       #portrait:Z
    :cond_1
    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 278
    .restart local v3       #xCount:I
    :cond_2
    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getTag()Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method getTopPadding()I
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    goto :goto_0
.end method

.method public getVacantCell([III)Z
    .locals 7
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 801
    iget-boolean v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 802
    .local v6, portrait:Z
    if-eqz v6, :cond_0

    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 803
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_1

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 804
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 806
    .local v5, occupied:[[Z
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/softwinner/launcher/ui/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 808
    invoke-static/range {v0 .. v5}, Lcom/softwinner/launcher/ui/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 802
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_0
    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 803
    .restart local v3       #xCount:I
    :cond_1
    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 194
    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->screen:I

    .line 195
    return-void
.end method

.method protected onCreateMenu()V
    .locals 0

    .prologue
    .line 1169
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 722
    .local v0, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->isDragging:Z

    .line 723
    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 724
    return-void
.end method

.method onDragOverChild(Landroid/view/View;II)V
    .locals 8
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 734
    iget-object v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellXY:[I

    .line 735
    .local v6, cellXY:[I
    invoke-virtual {p0, p2, p3, v6}, Lcom/softwinner/launcher/ui/CellLayout;->pointToCellRounded(II[I)V

    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 737
    .local v7, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    iget v3, v7, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDragRect:Landroid/graphics/RectF;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/softwinner/launcher/ui/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 738
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 739
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1160
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1161
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCell:Z

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1163
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDrawCellRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1165
    :cond_0
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 708
    if-eqz p1, :cond_0

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->isDragging:Z

    .line 710
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 713
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 4
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 695
    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 697
    .local v0, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    aget v1, p2, v2

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    .line 698
    aget v1, p2, v3

    iput v1, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    .line 699
    iput-boolean v2, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->isDragging:Z

    .line 700
    iput-boolean v3, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->dropped:Z

    .line 701
    iget-object v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 703
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 705
    .end local v0           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1173
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1176
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 200
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;

    .line 202
    .local v4, cellInfo:Lcom/softwinner/launcher/ui/CellLayout$CellInfo;
    if-nez v3, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/softwinner/launcher/ui/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 204
    .local v9, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mScrollX:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 205
    .local v14, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mScrollY:I

    move/from16 v19, v0

    add-int v16, v18, v19

    .line 206
    .local v16, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v7

    .line 208
    .local v7, count:I
    const/4 v8, 0x0

    .line 209
    .local v8, found:Z
    add-int/lit8 v10, v7, -0x1

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_1

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 212
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 213
    :cond_0
    invoke-virtual {v6, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 214
    move/from16 v0, v16

    invoke-virtual {v9, v14, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 215
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 216
    .local v11, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    iput-object v6, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 217
    iget v0, v11, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    .line 218
    iget v0, v11, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    .line 219
    iget v0, v11, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanX:I

    .line 220
    iget v0, v11, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanY:I

    .line 221
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    .line 222
    const/4 v8, 0x1

    .line 223
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/softwinner/launcher/ui/CellLayout;->mDirtyTag:Z

    .line 229
    .end local v6           #child:Landroid/view/View;
    .end local v11           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 231
    if-nez v8, :cond_2

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellXY:[I

    .line 233
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v5}, Lcom/softwinner/launcher/ui/CellLayout;->pointToCellExact(II[I)V

    .line 235
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 236
    .local v13, portrait:Z
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 237
    .local v15, xCount:I
    :goto_1
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    move/from16 v17, v0

    .line 239
    .local v17, yCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/softwinner/launcher/ui/CellLayout;->mOccupied:[[Z

    .line 240
    .local v12, occupied:[[Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v12, v2}, Lcom/softwinner/launcher/ui/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 242
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 243
    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    .line 244
    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    .line 245
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanX:I

    .line 246
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanY:I

    .line 247
    const/16 v18, 0x0

    aget v18, v5, v18

    if-ltz v18, :cond_7

    const/16 v18, 0x1

    aget v18, v5, v18

    if-ltz v18, :cond_7

    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    const/16 v18, 0x0

    aget v18, v5, v18

    aget-object v18, v12, v18

    const/16 v19, 0x1

    aget v19, v5, v19

    aget-boolean v18, v18, v19

    if-nez v18, :cond_7

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    .line 255
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/softwinner/launcher/ui/CellLayout;->mDirtyTag:Z

    .line 257
    .end local v5           #cellXY:[I
    .end local v12           #occupied:[[Z
    .end local v13           #portrait:Z
    .end local v15           #xCount:I
    .end local v17           #yCount:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/softwinner/launcher/ui/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 269
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v14           #x:I
    .end local v16           #y:I
    :cond_3
    :goto_4
    const/16 v18, 0x0

    return v18

    .line 209
    .restart local v6       #child:Landroid/view/View;
    .restart local v7       #count:I
    .restart local v8       #found:Z
    .restart local v9       #frame:Landroid/graphics/Rect;
    .restart local v10       #i:I
    .restart local v14       #x:I
    .restart local v16       #y:I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 236
    .end local v6           #child:Landroid/view/View;
    .restart local v5       #cellXY:[I
    .restart local v13       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto/16 :goto_1

    .line 237
    .restart local v15       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 247
    .restart local v12       #occupied:[[Z
    .restart local v17       #yCount:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 258
    .end local v5           #cellXY:[I
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v12           #occupied:[[Z
    .end local v13           #portrait:Z
    .end local v14           #x:I
    .end local v15           #xCount:I
    .end local v16           #y:I
    .end local v17           #yCount:I
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    .line 259
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 260
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellX:I

    .line 261
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->cellY:I

    .line 262
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanX:I

    .line 263
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->spanY:I

    .line 264
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/softwinner/launcher/ui/CellLayout$CellInfo;->valid:Z

    .line 265
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/softwinner/launcher/ui/CellLayout;->mDirtyTag:Z

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/softwinner/launcher/ui/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v11

    .line 593
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 594
    invoke-virtual {p0, v12}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 595
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 597
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 599
    .local v13, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    iget v9, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->x:I

    .line 600
    .local v9, childLeft:I
    iget v10, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->y:I

    .line 601
    .local v10, childTop:I
    iget v0, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 603
    iget-boolean v0, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->dropped:Z

    .line 606
    iget-object v7, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellXY:[I

    .line 607
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/softwinner/launcher/ui/CellLayout;->getLocationOnScreen([I)V

    .line 608
    iget-object v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 593
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 614
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 511
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 512
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 514
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 515
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 517
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_0

    if-nez v22, :cond_1

    .line 518
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 521
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 522
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 523
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    .line 524
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 525
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    .line 526
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 527
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    .line 528
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    .line 530
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 532
    add-int/lit8 v28, v29, -0x1

    .line 533
    .local v28, numShortGaps:I
    add-int/lit8 v27, v25, -0x1

    .line 535
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_5

    .line 536
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 538
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    .line 540
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 542
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_4

    .line 543
    div-int v6, v21, v28

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    .line 561
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v20

    .line 563
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 565
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 567
    .local v3, lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_7

    .line 568
    move-object/from16 v0, p0

    iget v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    invoke-virtual/range {v3 .. v9}, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 575
    :goto_3
    iget-boolean v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v6, :cond_2

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/softwinner/launcher/ui/CellLayout;->getId()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    iget v7, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget v7, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 577
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->regenerateId:Z

    .line 580
    :cond_2
    iget v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 581
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 583
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 563
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 530
    .end local v3           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v21           #hSpaceLeft:I
    .end local v24           #i:I
    .end local v27           #numLongGaps:I
    .end local v28           #numShortGaps:I
    .end local v31           #vSpaceLeft:I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 545
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    goto :goto_1

    .line 548
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_5
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 550
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    .line 552
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 554
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_6

    .line 555
    div-int v6, v31, v28

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    goto/16 :goto_1

    .line 557
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    goto/16 :goto_1

    .line 571
    .restart local v3       #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_3

    .line 586
    .end local v3           #lp:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/softwinner/launcher/ui/CellLayout;->setMeasuredDimension(II)V

    .line 587
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    iget-boolean v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mPortrait:Z

    .line 439
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    .line 440
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    .line 442
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/softwinner/launcher/ui/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 443
    sub-int v5, p2, v2

    iget v6, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/softwinner/launcher/ui/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 445
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    .line 446
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    .line 448
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    aput v8, p3, v8

    .line 449
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    aput v5, p3, v8

    .line 450
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    aput v8, p3, v9

    .line 451
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    aput v5, p3, v9

    .line 452
    :cond_3
    return-void

    .line 439
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 440
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1

    .line 445
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout;->mLongAxisCells:I

    goto :goto_2

    .line 446
    .restart local v3       #xAxis:I
    :cond_7
    iget v4, p0, Lcom/softwinner/launcher/ui/CellLayout;->mShortAxisCells:I

    goto :goto_3
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 461
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/softwinner/launcher/ui/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/softwinner/launcher/ui/CellLayout;->pointToCellExact(II[I)V

    .line 462
    return-void
.end method

.method public rectToCell(II)[I
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 780
    .local v2, resources:Landroid/content/res/Resources;
    const v6, 0x7f080003

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 781
    .local v1, actualWidth:I
    const v6, 0x7f080004

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 782
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 785
    .local v3, smallerSize:I
    add-int v6, p1, v3

    div-int v4, v6, v3

    .line 786
    .local v4, spanX:I
    add-int v6, p2, v3

    div-int v5, v6, v3

    .line 788
    .local v5, spanY:I
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    return-object v6
.end method

.method public removeViewFromCell(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1147
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1148
    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1149
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;

    .line 1150
    .local v0, cellParams:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget v3, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    if-ne v3, p1, :cond_0

    iget v3, v0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    if-ne v3, p2, :cond_0

    .line 1152
    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/CellLayout;->removeView(Landroid/view/View;)V

    .line 1147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1155
    .end local v0           #cellParams:Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->invalidate()V

    .line 1156
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 186
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 189
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/CellLayout;->getChildCount()I

    move-result v0

    .line 619
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 620
    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 621
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 623
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 630
    return-void
.end method
