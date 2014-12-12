.class public Lcom/softwinner/launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field container:J

.field id:J

.field isGesture:Z

.field itemType:I

.field screen:I

.field public spanX:I

.field public spanY:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/softwinner/launcher/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/softwinner/launcher/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/ItemInfo;->isGesture:Z

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/softwinner/launcher/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/softwinner/launcher/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/softwinner/launcher/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/softwinner/launcher/ItemInfo;->isGesture:Z

    .line 88
    iget-wide v0, p1, Lcom/softwinner/launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/softwinner/launcher/ItemInfo;->id:J

    .line 89
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    .line 90
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    .line 91
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    .line 92
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    .line 93
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->screen:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->screen:I

    .line 94
    iget v0, p1, Lcom/softwinner/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/softwinner/launcher/ItemInfo;->itemType:I

    .line 95
    iget-wide v0, p1, Lcom/softwinner/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/softwinner/launcher/ItemInfo;->container:J

    .line 96
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 119
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 127
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-static {p1}, Lcom/softwinner/launcher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 134
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 136
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 104
    const-string v0, "itemType"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-boolean v0, p0, Lcom/softwinner/launcher/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    .line 106
    const-string v0, "container"

    iget-wide v1, p0, Lcom/softwinner/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v0, "screen"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v0, "cellX"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v0, "cellY"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v0, "spanX"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v0, "spanY"

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/softwinner/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/softwinner/launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
