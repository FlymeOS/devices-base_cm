.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 571
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 611
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 614
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 616
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 619
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_0
    return-void

    .line 619
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 581
    .local v6, "thumbUri":Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 582
    .local v4, "thumbId":J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 584
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 585
    .local v3, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 587
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 596
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thumbId":J
    :goto_0
    return-object v0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 591
    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 593
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    .line 640
    const/4 v12, 0x0

    .line 641
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 645
    .local v16, "filePath":Ljava/lang/String;
    new-instance v17, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 647
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v13, 0x0

    .line 649
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .line 650
    .local v18, "magic":J
    const-wide/16 v8, 0x0

    cmp-long v4, v18, v8

    if-eqz v4, :cond_8

    .line 651
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 652
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 653
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_0

    .line 654
    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 656
    :cond_0
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 657
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    invoke-static {v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 658
    if-nez v12, :cond_1

    .line 659
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    move-object v4, v12

    .line 743
    .end local v18    # "magic":J
    :goto_1
    return-object v4

    .line 645
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_3
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 662
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "magic":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 735
    .end local v18    # "magic":J
    :catch_0
    move-exception v15

    .line 736
    .local v15, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v4, "MediaStore"

    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 738
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    .end local v15    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v4, v12

    .line 743
    goto :goto_1

    .line 664
    .restart local v18    # "magic":J
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 665
    if-eqz p8, :cond_7

    :try_start_5
    const-string/jumbo v14, "video_id="

    .line 666
    .local v14, "column":Ljava/lang/String;
    :goto_3
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 667
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 668
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v12

    .line 669
    if-eqz v12, :cond_8

    .line 738
    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    move-object v4, v12

    goto :goto_1

    .line 665
    .end local v14    # "column":Ljava/lang/String;
    :cond_7
    :try_start_6
    const-string v14, "image_id="

    goto :goto_3

    .line 676
    :cond_8
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "blocking"

    const-string v8, "1"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 679
    .local v5, "blockingUri":Landroid/net/Uri;
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_9
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v13

    .line 682
    if-nez v13, :cond_b

    const/4 v4, 0x0

    .line 738
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 685
    :cond_b
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_13

    .line 686
    :try_start_7
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 687
    :try_start_8
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_c

    .line 688
    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 690
    :cond_c
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 691
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_d

    .line 692
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    invoke-static {v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 693
    if-nez v12, :cond_d

    .line 694
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_d
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 707
    :cond_e
    :goto_4
    if-nez v12, :cond_18

    .line 708
    :try_start_9
    const-string v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the thumbnail in memory: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "thumbnails"

    const-string/jumbo v8, "media"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 713
    .local v7, "uri":Landroid/net/Uri;
    if-nez v16, :cond_17

    .line 714
    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 715
    :cond_f
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 716
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v4

    if-nez v4, :cond_15

    .line 717
    :cond_10
    const/4 v4, 0x0

    .line 738
    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_11
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 697
    .end local v7    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 738
    .end local v5    # "blockingUri":Landroid/net/Uri;
    .end local v18    # "magic":J
    :catchall_2
    move-exception v4

    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_12
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    throw v4

    .line 698
    .restart local v5    # "blockingUri":Landroid/net/Uri;
    .restart local v18    # "magic":J
    :cond_13
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_14

    .line 699
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 700
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v13, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_4

    .line 703
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported kind: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 719
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_15
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v16

    .line 722
    if-nez v16, :cond_17

    .line 723
    const/4 v4, 0x0

    .line 738
    if-eqz v13, :cond_16

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_16
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 726
    :cond_17
    const/4 v4, 0x1

    :try_start_d
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 727
    if-eqz v16, :cond_18

    .line 728
    if-eqz p8, :cond_1a

    .line 729
    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v12

    .line 738
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_18
    :goto_5
    if-eqz v13, :cond_19

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_19
    invoke-virtual/range {v17 .. v17}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 741
    const/16 v17, 0x0

    .line 742
    goto/16 :goto_2

    .line 731
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_1a
    :try_start_e
    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v12

    goto :goto_5
.end method
