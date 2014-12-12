.class final Lcom/softwinner/launcher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel;->delFavoritesAppFromDataBase(Landroid/content/Context;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, result:Z
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 245
    .local v1, id:I
    int-to-long v6, v1

    invoke-static {v6, v7, v4}, Lcom/softwinner/launcher/LauncherSettings$FavoritesApp;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 246
    .local v0, delUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_0
    or-int/2addr v2, v3

    .line 247
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    if-eqz v2, :cond_1

    .line 249
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$context:Landroid/content/Context;

    const v6, 0x7f0a0013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 253
    return-void

    :cond_2
    move v3, v5

    .line 246
    goto :goto_0
.end method
