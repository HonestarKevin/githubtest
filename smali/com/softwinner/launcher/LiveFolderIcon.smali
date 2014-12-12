.class public Lcom/softwinner/launcher/LiveFolderIcon;
.super Lcom/softwinner/launcher/FolderIcon;
.source "LiveFolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/softwinner/launcher/FolderIcon;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static fromXml(ILcom/softwinner/launcher/Launcher;Landroid/view/ViewGroup;Lcom/softwinner/launcher/LiveFolderInfo;)Lcom/softwinner/launcher/LiveFolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/LiveFolderIcon;

    .line 43
    .local v1, icon:Lcom/softwinner/launcher/LiveFolderIcon;
    invoke-virtual {p1}, Lcom/softwinner/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 44
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v0, p3, Lcom/softwinner/launcher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 45
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 46
    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    :cond_0
    new-instance v3, Lcom/softwinner/launcher/FastBitmapDrawable;

    invoke-direct {v3, v0}, Lcom/softwinner/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5, v3, v5, v5}, Lcom/softwinner/launcher/LiveFolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v3, p3, Lcom/softwinner/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/softwinner/launcher/LiveFolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v1, p3}, Lcom/softwinner/launcher/LiveFolderIcon;->setTag(Ljava/lang/Object;)V

    .line 53
    return-object v1
.end method
