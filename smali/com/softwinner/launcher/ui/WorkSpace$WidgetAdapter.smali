.class Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "WorkSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/WorkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetAdapter"
.end annotation


# instance fields
.field mWidgetsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/softwinner/launcher/ui/WorkSpace;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/WorkSpace;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    .locals 1
    .parameter "id"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->getItem(I)Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convert"
    .parameter "parent"

    .prologue
    const v6, 0x7f0c0006

    const v5, 0x7f0a001d

    .line 79
    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    invoke-virtual {v2}, Lcom/softwinner/launcher/ui/WorkSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, tv:Landroid/widget/TextView;
    :try_start_0
    const-string v3, ""

    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/softwinner/launcher/ui/WorkSpace;->access$000(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    .local v0, str:Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/softwinner/launcher/ui/WorkSpace;->access$100(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2

    .line 85
    .end local v0           #str:Ljava/lang/CharSequence;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    iget-object v0, v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 90
    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/softwinner/launcher/ui/WorkSpace;->access$100(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0       #str:Ljava/lang/CharSequence;
    goto :goto_1

    .line 90
    .end local v0           #str:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->this$0:Lcom/softwinner/launcher/ui/WorkSpace;

    #getter for: Lcom/softwinner/launcher/ui/WorkSpace;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/softwinner/launcher/ui/WorkSpace;->access$100(Lcom/softwinner/launcher/ui/WorkSpace;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/CharSequence;
    throw v2
.end method

.method public setWidgetInfo(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/LauncherAppWidgetInfo;

    .line 68
    .local v1, widgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    iget-object v2, p0, Lcom/softwinner/launcher/ui/WorkSpace$WidgetAdapter;->mWidgetsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v1           #widgetInfo:Lcom/softwinner/launcher/LauncherAppWidgetInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
