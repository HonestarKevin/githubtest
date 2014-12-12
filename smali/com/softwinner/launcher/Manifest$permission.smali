.class public final Lcom/softwinner/launcher/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final READ_SETTINGS:Ljava/lang/String; = "com.softwinner.launcher.permission.READ_SETTINGS"

.field public static final WRITE_SETTINGS:Ljava/lang/String; = "com.softwinner.launcher.permission.WRITE_SETTINGS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
