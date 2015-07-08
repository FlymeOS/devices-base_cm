.class public interface abstract Landroid/app/IFlymeErrorReportManager;
.super Ljava/lang/Object;
.source "IFlymeErrorReportManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IFlymeErrorReportManager$Stub;
    }
.end annotation


# static fields
.field public static final FLYME_ERROR_REPORT_MANAGER:Ljava/lang/String; = "flyme_error_report_manager"


# virtual methods
.method public abstract setFlymeErrorListener(Landroid/app/IApplicationErrorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
