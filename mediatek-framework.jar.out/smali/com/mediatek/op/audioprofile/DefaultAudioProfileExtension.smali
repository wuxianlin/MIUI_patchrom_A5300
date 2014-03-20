.class public Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
    }
.end annotation


# instance fields
.field protected final IS_SUPPORT_OUTDOOR_EDITABLE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;->IS_SUPPORT_OUTDOOR_EDITABLE:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .locals 1
    .parameter "shouldSetRingerMode"
    .parameter "oldProfileKey"
    .parameter "newProfileKey"
    .parameter "customActiveProfileDeleted"

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 90
    return-void
.end method

.method public onActiveProfileChange(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "shouldSetRingerMode"
    .parameter "oldProfileKey"
    .parameter "newProfileKey"

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationChange(Z)Z
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerModeChanged(I)Z
    .locals 1
    .parameter "newRingerMode"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)Z
    .locals 1
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onRingtoneChange(Z)Z
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public persistStreamVolumeToSystem(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckDefaultProfiles()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSyncGeneralRingtoneToOutdoor()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
