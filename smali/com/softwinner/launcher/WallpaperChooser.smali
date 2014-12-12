.class public Lcom/softwinner/launcher/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;,
        Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperChooser"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/WallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/softwinner/launcher/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/softwinner/launcher/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/WallpaperChooser;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/softwinner/launcher/WallpaperChooser;Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;)Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 92
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 94
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 99
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 100
    iget-object v7, p0, Lcom/softwinner/launcher/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v7, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 5

    .prologue
    const v4, 0x7f090001

    const/16 v3, 0x18

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Lcom/softwinner/launcher/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v4}, Lcom/softwinner/launcher/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 88
    const/high16 v2, 0x7f09

    invoke-direct {p0, v1, v0, v2}, Lcom/softwinner/launcher/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method private selectWallpaper(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 137
    iget-boolean v2, p0, Lcom/softwinner/launcher/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/softwinner/launcher/WallpaperChooser;->mIsWallpaperSet:Z

    .line 143
    :try_start_0
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/WallpaperChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 144
    .local v1, wpm:Landroid/app/WallpaperManager;
    iget-object v2, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 145
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/WallpaperChooser;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/softwinner/launcher/WallpaperChooser;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Launcher.WallpaperChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->selectWallpaper(I)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->requestWindowFeature(I)Z

    .line 62
    invoke-direct {p0}, Lcom/softwinner/launcher/WallpaperChooser;->findWallpapers()V

    .line 64
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->setContentView(I)V

    .line 66
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 67
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/softwinner/launcher/WallpaperChooser$ImageAdapter;-><init>(Lcom/softwinner/launcher/WallpaperChooser;Lcom/softwinner/launcher/WallpaperChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 69
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 71
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    .line 122
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->cancel()V

    .line 128
    :cond_0
    new-instance v0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;-><init>(Lcom/softwinner/launcher/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mLoader:Lcom/softwinner/launcher/WallpaperChooser$WallpaperLoader;

    .line 129
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/WallpaperChooser;->mIsWallpaperSet:Z

    .line 112
    return-void
.end method
