.class Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/WallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/softwinner/launcher/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/WallpaperChooser;Lcom/softwinner/launcher/WallpaperChooser;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-virtual {p2}, Lcom/softwinner/launcher/WallpaperChooser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 160
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/softwinner/launcher/WallpaperChooser;->access$000(Lcom/softwinner/launcher/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v3, p0, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030014

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 183
    .local v0, image:Landroid/widget/ImageView;
    :goto_0
    iget-object v3, p0, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/softwinner/launcher/WallpaperChooser;->access$000(Lcom/softwinner/launcher/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, thumbRes:I
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 186
    .local v1, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 187
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 192
    :goto_1
    return-object v0

    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumbRes:I
    :cond_0
    move-object v0, p2

    .line 180
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #image:Landroid/widget/ImageView;
    goto :goto_0

    .line 189
    .restart local v1       #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #thumbRes:I
    :cond_1
    const-string v3, "Launcher.WallpaperChooser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error decoding thumbnail resId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for wallpaper #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
