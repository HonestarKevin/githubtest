.class Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput v0, p0, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 430
    iput v0, p0, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;->mnc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/softwinner/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;-><init>()V

    return-void
.end method
