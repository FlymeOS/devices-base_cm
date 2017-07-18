.class final Landroid/os/MessageQueue$FileDescriptorRecord;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptorRecord"
.end annotation


# instance fields
.field public final mDescriptor:Ljava/io/FileDescriptor;

.field public mEvents:I

.field public mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

.field public mSeq:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p1, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    .line 868
    iput p2, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 869
    iput-object p3, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 866
    return-void
.end method
