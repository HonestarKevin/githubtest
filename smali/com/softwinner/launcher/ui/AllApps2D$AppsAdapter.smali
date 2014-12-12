.class public Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllApps2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/AllApps2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/softwinner/launcher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/softwinner/launcher/ui/AllApps2D;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/ui/AllApps2D;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/softwinner/launcher/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->this$0:Lcom/softwinner/launcher/ui/AllApps2D;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 131
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ApplicationInfo;

    .line 138
    .local v0, info:Lcom/softwinner/launcher/ApplicationInfo;
    if-nez p2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/softwinner/launcher/ui/AllApps2D$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 142
    check-cast v1, Landroid/widget/TextView;

    .line 143
    .local v1, textView:Landroid/widget/TextView;
    invoke-static {}, Lcom/softwinner/launcher/ui/AllApps2D;->access$600()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const-string v2, "TvdLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllApp2Dicon bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iget-object v2, v0, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 148
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v0, Lcom/softwinner/launcher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v2, v0, Lcom/softwinner/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object p2
.end method
