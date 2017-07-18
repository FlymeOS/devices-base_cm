.class Landroid/media/midi/MidiManager$DeviceListener$2;
.super Ljava/lang/Object;
.source "MidiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager$DeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/midi/MidiManager$DeviceListener;

.field final synthetic val$deviceF:Landroid/media/midi/MidiDeviceInfo;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/midi/MidiManager$DeviceListener;
    .param p2, "val$deviceF"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->val$deviceF:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    invoke-static {v0}, Landroid/media/midi/MidiManager$DeviceListener;->-get0(Landroid/media/midi/MidiManager$DeviceListener;)Landroid/media/midi/MidiManager$DeviceCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->val$deviceF:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    .line 96
    return-void
.end method
