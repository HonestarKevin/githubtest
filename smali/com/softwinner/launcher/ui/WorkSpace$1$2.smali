.class Lcom/softwinner/launcher/ui/WorkSpace$1$2;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$widgetMenu:Lcom/softwinner/launcher/ui/OptionMenu;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/WorkSpace$1;Lcom/softwinner/launcher/ui/OptionMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$2;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    iput-object p2, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$2;->val$widgetMenu:Lcom/softwinner/launcher/ui/OptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "child"
    .parameter "position"
    .parameter "id"
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
    .line 504
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    .line 505
    .local v0, item:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$2;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/softwinner/launcher/Launcher;->removeAppWidget(Lcom/softwinner/launcher/LauncherAppWidgetInfo;)V

    .line 506
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$2;->this$1:Lcom/softwinner/launcher/ui/WorkSpace$1;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/WorkSpace;->access$200(Lcom/softwinner/launcher/ui/WorkSpace;)Lcom/softwinner/launcher/ui/CellLayout;

    move-result-object v1

    iget v2, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v3, v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v1, v2, v3}, Lcom/softwinner/launcher/ui/CellLayout;->removeViewFromCell(II)V

    .line 507
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1$2;->val$widgetMenu:Lcom/softwinner/launcher/ui/OptionMenu;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/OptionMenu;->dismiss()V

    .line 508
    return-void
.end method
