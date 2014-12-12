.class Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;
.super Lcom/softwinner/launcher/ui/OptionMenu;
.source "WorkSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/WorkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetOptionMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/WorkSpace;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/ui/WorkSpace;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    .line 99
    invoke-direct {p0, p2}, Lcom/softwinner/launcher/ui/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 100
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mWidgetsLayout:Lcom/softwinner/launcher/ui/CellLayout;
    invoke-static {v0}, Lcom/softwinner/launcher/ui/WorkSpace;->access$200(Lcom/softwinner/launcher/ui/WorkSpace;)Lcom/softwinner/launcher/ui/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/softwinner/launcher/ui/CellLayout;->disableDrawRect()V

    .line 104
    invoke-super {p0}, Lcom/softwinner/launcher/ui/OptionMenu;->dismiss()V

    .line 105
    return-void
.end method
