.class final Lcom/softwinner/launcher/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/softwinner/launcher/ItemInfo;JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method
