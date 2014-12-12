.class Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/WallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/softwinner/launcher/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/WallpaperChooser;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 205
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 206
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 207
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 248
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 249
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 215
    :goto_0
    return-object v1

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    invoke-virtual {v1}, Lcom/softwinner/launcher/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/WallpaperChooser;->access$100(Lcom/softwinner/launcher/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .line 215
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    .line 221
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v2, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/softwinner/launcher/WallpaperChooser;->access$200(Lcom/softwinner/launcher/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/softwinner/launcher/WallpaperChooser;->access$200(Lcom/softwinner/launcher/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #getter for: Lcom/softwinner/launcher/WallpaperChooser;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/softwinner/launcher/WallpaperChooser;->access$300(Lcom/softwinner/launcher/WallpaperChooser;)Landroid/widget/ImageView;

    move-result-object v1

    .line 230
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    #setter for: Lcom/softwinner/launcher/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/softwinner/launcher/WallpaperChooser;->access$202(Lcom/softwinner/launcher/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 234
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 235
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 236
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 238
    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 240
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->this$0:Lcom/softwinner/launcher/WallpaperChooser;

    const/4 v3, 0x0

    #setter for: Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;
    invoke-static {v2, v3}, Lcom/softwinner/launcher/WallpaperChooser;->access$402(Lcom/softwinner/launcher/WallpaperChooser;Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;)Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    goto :goto_0

    .line 242
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
