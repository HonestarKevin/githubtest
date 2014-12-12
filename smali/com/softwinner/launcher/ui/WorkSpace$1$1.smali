.class Lcom/softwinner/launcher/ui/WorkSpace$1$1;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/ui/WorkSpace$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/WorkSpace$1;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$1;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    .line 493
    .local v0, item:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$1;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/WorkSpace;->access$200(Lcom/softwinner/launcher/ui/WorkSpace;)Lcom/softwinner/launcher/ui/CellLayout;

    move-result-object v1

    iget v2, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v3, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v4, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v5, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/softwinner/launcher/ui/CellLayout;->drawCellRect(IIII)V

    .line 494
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$1;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    iget-object v0, v0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;
    invoke-static {v0}, Lcom/softwinner/launcher/ui/WorkSpace;->access$200(Lcom/softwinner/launcher/ui/WorkSpace;)Lcom/softwinner/launcher/ui/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/softwinner/launcher/ui/CellLayout;->disableDrawRect()V

    .line 498
    return-void
.end method
