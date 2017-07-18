.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final mInfo:Landroid/print/PrintDocumentInfo;

.field private final mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "printServiceClient"    # Landroid/printservice/IPrintServiceClient;
    .param p3, "info"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    .line 48
    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 49
    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    .line 46
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/ParcelFileDescriptor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 73
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 77
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 78
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    aget-object v4, v0, v5

    .line 79
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x1

    aget-object v3, v0, v5

    .line 80
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v3, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-object v4

    .line 90
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 84
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v3    # "sink":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "source":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .line 85
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "PrintDocument"

    const-string/jumbo v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v3, :cond_1

    .line 89
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 95
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-object v7

    .line 90
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 82
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 83
    .restart local v1    # "ioe":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v5, "PrintDocument"

    const-string/jumbo v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    if-eqz v3, :cond_1

    .line 89
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 90
    :catch_4
    move-exception v1

    goto :goto_1

    .line 86
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 87
    if-eqz v3, :cond_2

    .line 89
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 86
    :cond_2
    :goto_2
    throw v5

    .line 90
    :catch_5
    move-exception v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2
.end method

.method public getInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 59
    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
