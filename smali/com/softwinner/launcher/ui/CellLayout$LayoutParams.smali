.class public Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field regenerateId:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 945
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 946
    iput p1, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    .line 947
    iput p2, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    .line 948
    iput p3, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    .line 949
    iput p4, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    .line 950
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 933
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 934
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    .line 935
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    .line 936
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 939
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    .line 941
    iput v0, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    .line 942
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 955
    iget v0, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellHSpan:I

    .line 956
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellVSpan:I

    .line 957
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellX:I

    .line 958
    .local v2, myCellX:I
    iget v3, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->cellY:I

    .line 960
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->width:I

    .line 962
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->height:I

    .line 965
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->x:I

    .line 966
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/softwinner/launcher/ui/CellLayout$LayoutParams;->y:I

    .line 967
    return-void
.end method
