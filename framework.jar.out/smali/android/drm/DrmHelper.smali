.class public Landroid/drm/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field public static final BUY_LICENSE:Ljava/lang/String; = "android.drmservice.intent.action.BUY_LICENSE"

.field public static final EXTENSION_DCF:Ljava/lang/String; = ".dcf"

.field public static final EXTENSION_DM:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_FL:Ljava/lang/String; = ".fl"

.field public static final MIMETYPE_DRM_CONTENT:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final TAG:Ljava/lang/String; = "Gallery2/DrmHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkRightsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v3, -0x1

    .line 76
    .local v3, "status":I
    const/4 v0, 0x0

    .line 78
    .local v0, "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :try_start_0
    new-instance v1, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .local v1, "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :try_start_1
    invoke-static {v1, p1, p2}, Landroid/drm/DrmHelper;->checkRightsStatus(Landroid/drm/DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 83
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Landroid/drm/DrmManagerClientWrapper;->release()V

    move-object v0, v1

    .line 87
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :cond_0
    :goto_0
    return v3

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "Gallery2/DrmHelper"

    const-string v5, "Exception while checking rights"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    goto :goto_0

    .line 83
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_1
    throw v4

    .line 83
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_2

    .line 80
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_1

    .end local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :cond_2
    move-object v0, v1

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_0
.end method

.method public static final checkRightsStatus(Landroid/drm/DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "drmClient"    # Landroid/drm/DrmManagerClientWrapper;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 96
    const/4 v0, -0x1

    .line 97
    .local v0, "status":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0, p1, v4}, Landroid/drm/DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/drm/DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 104
    :cond_1
    const-string v1, "/storage/emulated/0"

    const-string v2, "/storage/emulated/legacy"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClientWrapper;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 107
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0, p1, v4}, Landroid/drm/DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/drm/DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "Gallery2/DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not consume rights from non-drm file. path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :cond_1
    const-string v1, "Gallery2/DrmHelper"

    const-string v2, "Can not comsume rights of a non-image file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->consumeDrmImageRights(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v2, "Gallery2/DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-object v1

    .line 151
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstanceDrmFile(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "Gallery2/DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/drm/DrmHelper;->getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "Gallery2/DrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not decode non-drm file. path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 176
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 179
    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeDrmFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrmImageBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const-string v2, "Gallery2/DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-object v1

    .line 193
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->getDrmImageBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "Gallery2/DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    :cond_0
    :goto_0
    return-object v8

    .line 210
    :cond_1
    const/4 v8, 0x0

    .line 211
    .local v8, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 213
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 222
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v7

    .line 220
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Gallery2/DrmHelper"

    const-string v1, "Could not get drm file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 222
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v1, ""

    .line 236
    .local v1, "mime":Ljava/lang/String;
    new-instance v0, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "client":Landroid/drm/DrmManagerClientWrapper;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/drm/DrmManagerClientWrapper;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClientWrapper;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 246
    :cond_1
    return-object v1

    .line 242
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_2
    throw v2
.end method

.method public static final isDrmCD(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmCDBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 345
    new-instance v0, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "client":Landroid/drm/DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 349
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 350
    const-string v3, "DRM-TYPE"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 351
    .local v1, "drmType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 352
    const/4 v3, 0x1

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 361
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 356
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 361
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 356
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isDrmFL(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string v0, ".fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmFLBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 320
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    new-instance v0, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, "client":Landroid/drm/DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 325
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 326
    const-string v4, "DRM-TYPE"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 327
    .local v1, "drmType":I
    if-ne v1, v3, :cond_1

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 337
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 332
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 337
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 332
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const-string v0, ".fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmSD(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmSDBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 368
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 369
    new-instance v0, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "client":Landroid/drm/DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 373
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 374
    const-string v3, "DRM-TYPE"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 375
    .local v1, "drmType":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 376
    const/4 v3, 0x1

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 385
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 380
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    .line 385
    .end local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 380
    .restart local v0    # "client":Landroid/drm/DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isLicenseableDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isShareableDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {p0}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final manageDrmLicense(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 434
    new-instance v0, Landroid/drm/DrmHelper$1;

    invoke-direct {v0, p2, p0, p3}, Landroid/drm/DrmHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/drm/DrmHelper;->manageDrmLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final manageDrmLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p1}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p0, p1, p2}, Landroid/drm/DrmHelper;->validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1, p2}, Landroid/drm/DrmHelper;->consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z

    .line 422
    :cond_0
    return-void
.end method

.method public static final showDrmInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-static {p1}, Landroid/drm/DrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.drmservice.intent.action.SHOW_PROPERTIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "drmintent":Landroid/content/Intent;
    const-string v1, "/storage/emulated/0"

    const-string v2, "/storage/emulated/legacy"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 460
    const-string v1, "DRM_FILE_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v1, "DRM_TYPE"

    const-string v2, "OMAV1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    .end local v0    # "drmintent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static final validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 472
    const/4 v5, 0x1

    .line 473
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 475
    .local v1, "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClientWrapper;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .local v2, "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :try_start_1
    invoke-static {v2, p1, p2}, Landroid/drm/DrmHelper;->checkRightsStatus(Landroid/drm/DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 477
    .local v6, "status":I
    if-eqz v6, :cond_0

    .line 478
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 479
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "Rights-Issuer"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.drmservice.intent.action.BUY_LICENSE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "DRM_FILE_PATH"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    const-string v8, "Gallery2/DrmHelper"

    const-string v9, "Drm License expared! can not proceed ahead"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 484
    const/4 v5, 0x0

    .line 489
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v2, :cond_3

    .line 490
    invoke-virtual {v2}, Landroid/drm/DrmManagerClientWrapper;->release()V

    move-object v1, v2

    .line 493
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .end local v6    # "status":I
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :cond_1
    :goto_0
    return v5

    .line 486
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v8, "Gallery2/DrmHelper"

    const-string v9, "Exception while valicating drm license"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1}, Landroid/drm/DrmManagerClientWrapper;->release()V

    goto :goto_0

    .line 489
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {v1}, Landroid/drm/DrmManagerClientWrapper;->release()V

    :cond_2
    throw v8

    .line 489
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_2

    .line 486
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_1

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v6    # "status":I
    :cond_3
    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClientWrapper;
    goto :goto_0
.end method
