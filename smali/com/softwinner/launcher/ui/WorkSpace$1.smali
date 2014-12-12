.class Lcom/softwinner/launcher/ui/WorkSpace$1;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/ui/WorkSpace;->createMainMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/WorkSpace;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$om:Lcom/softwinner/launcher/ui/OptionMenu;

.field final synthetic val$width:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/WorkSpace;Lcom/softwinner/launcher/ui/OptionMenu;Landroid/content/Context;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iput-object p2, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$om:Lcom/softwinner/launcher/ui/OptionMenu;

    iput-object p3, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$y:I

    iput p5, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$width:I

    iput p6, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 480
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 481
    .local v8, item:Ljava/lang/Integer;
    const v1, 0x7f0a0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v1}, Lcom/softwinner/launcher/Launcher;->pickAppWidget()V

    .line 483
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$om:Lcom/softwinner/launcher/ui/OptionMenu;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/OptionMenu;->dismiss()V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const v1, 0x7f0a0017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    new-instance v0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/softwinner/launcher/ui/WorkSpace$WidgetOptionMenu;-><init>(Lcom/softwinner/launcher/ui/WorkSpace;Landroid/content/Context;)V

    .line 488
    .local v0, widgetMenu:Lcom/softwinner/launcher/ui/OptionMenu;
    new-instance v1, Lcom/softwinner/launcher/ui/WorkSpace$1$1;

    invoke-direct {v1, p0}, Lcom/softwinner/launcher/ui/WorkSpace$1$1;-><init>(Lcom/softwinner/launcher/ui/WorkSpace$1;)V

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/OptionMenu;->setSelectedCallback(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 501
    new-instance v1, Lcom/softwinner/launcher/ui/WorkSpace$1$2;

    invoke-direct {v1, p0, v0}, Lcom/softwinner/launcher/ui/WorkSpace$1$2;-><init>(Lcom/softwinner/launcher/ui/WorkSpace$1;Lcom/softwinner/launcher/ui/OptionMenu;)V

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/OptionMenu;->setClickCallback(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 510
    new-instance v6, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    invoke-direct {v6, v1}, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;-><init>(Lcom/softwinner/launcher/ui/WorkSpace;)V

    .line 511
    .local v6, adapter:Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    iget-object v1, v1, Lcom/softwinner/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->setWidgetInfo(Ljava/util/ArrayList;)V

    .line 512
    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/ui/OptionMenu;->setTitle(I)V

    .line 513
    invoke-virtual {v0, v6}, Lcom/softwinner/launcher/ui/OptionMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 514
    const v1, -0x1869f

    iget v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$y:I

    iget v3, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$width:I

    iget v4, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$height:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/softwinner/launcher/ui/OptionMenu;->show(IIIIZ)V

    goto :goto_0

    .line 515
    .end local v0           #widgetMenu:Lcom/softwinner/launcher/ui/OptionMenu;
    .end local v6           #adapter:Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;
    :cond_2
    const v1, 0x7f0a0019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v9, pickWallpaper:Landroid/content/Intent;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/WorkSpace;->access$300(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 519
    .local v7, chooser:Landroid/content/Intent;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    const-string v2, "Laucher.MainViewContainer"

    invoke-virtual {v1, v7, v2}, Lcom/softwinner/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lcom/softwinner/launcher/ui/WorkSpace$1;->val$om:Lcom/softwinner/launcher/ui/OptionMenu;

    invoke-virtual {v1}, Lcom/softwinner/launcher/ui/OptionMenu;->dismiss()V

    goto/16 :goto_0
.end method
