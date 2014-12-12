.class public Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/OptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field mTextIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convert"
    .parameter "parent"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    :cond_0
    const v1, 0x7f0c0018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, content:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;->mTextIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    return-object p2
.end method
