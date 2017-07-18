.class final Landroid/os/ParcelFileDescriptor$2;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

.field final synthetic val$queue:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0
    .param p1, "val$queue"    # Landroid/os/MessageQueue;
    .param p2, "val$listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;

    .prologue
    .line 240
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$2;->val$queue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$2;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .prologue
    const/4 v4, 0x0

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "status":Landroid/os/ParcelFileDescriptor$Status;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 245
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 246
    .local v0, "buf":[B
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->-wrap0(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v1

    .line 250
    .end local v0    # "buf":[B
    .end local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 251
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$2;->val$queue:Landroid/os/MessageQueue;

    invoke-virtual {v2, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 252
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 253
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$2;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 254
    return v4

    .line 247
    .restart local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    :cond_1
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    .line 248
    new-instance v1, Landroid/os/ParcelFileDescriptor$Status;

    .end local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    .local v1, "status":Landroid/os/ParcelFileDescriptor$Status;
    goto :goto_0

    .line 256
    .end local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
