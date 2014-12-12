.class public Lcom/softwinner/launcher/FolderIcon;
.super Lcom/softwinner/launcher/ui/BubbleTextView;
.source "FolderIcon.java"


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/softwinner/launcher/UserFolderInfo;

.field private mLauncher:Lcom/softwinner/launcher/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/softwinner/launcher/ui/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/ui/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static fromXml(ILcom/softwinner/launcher/Launcher;Landroid/view/ViewGroup;Lcom/softwinner/launcher/UserFolderInfo;)Lcom/softwinner/launcher/FolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/softwinner/launcher/FolderIcon;

    .line 52
    .local v1, icon:Lcom/softwinner/launcher/FolderIcon;
    invoke-virtual {p1}, Lcom/softwinner/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/softwinner/launcher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/softwinner/launcher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/softwinner/launcher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v3, p3, Lcom/softwinner/launcher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/softwinner/launcher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1, p3}, Lcom/softwinner/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 59
    iput-object p3, v1, Lcom/softwinner/launcher/FolderIcon;->mInfo:Lcom/softwinner/launcher/UserFolderInfo;

    .line 60
    iput-object p1, v1, Lcom/softwinner/launcher/FolderIcon;->mLauncher:Lcom/softwinner/launcher/Launcher;

    .line 62
    return-object v1
.end method
