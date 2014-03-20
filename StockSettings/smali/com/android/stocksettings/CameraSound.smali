.class public Lcom/android/stocksettings/CameraSound;
.super Landroid/preference/PreferenceActivity;
.source "CameraSound.java"


# static fields
.field private static final KEY_CAMERA_SOUND:Ljava/lang/String; = "camera_sound"

.field private static final KEY_FOCUS_SOUND:Ljava/lang/String; = "focus_sound"

.field private static final KEY_RECORD_SOUND:Ljava/lang/String; = "record_sound"


# instance fields
.field private cameraSound:Landroid/preference/CheckBoxPreference;

.field private focusSound:Landroid/preference/CheckBoxPreference;

.field private recordSound:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/CameraSound;->addPreferencesFromResource(I)V

    .line 22
    const-string v0, "camera_sound"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/CameraSound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/CameraSound;->cameraSound:Landroid/preference/CheckBoxPreference;

    .line 23
    const-string v0, "record_sound"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/CameraSound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/CameraSound;->recordSound:Landroid/preference/CheckBoxPreference;

    .line 24
    const-string v0, "focus_sound"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/CameraSound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/CameraSound;->focusSound:Landroid/preference/CheckBoxPreference;

    .line 25
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->cameraSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 29
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->cameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "mv /system/media/audio/ui/camera_click.ogg /system/media/audio/ui/camera_click.bak"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 34
    :cond_1
    const-string v0, "mv /system/media/audio/ui/camera_click.bak /system/media/audio/ui/camera_click.ogg"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->recordSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 38
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->recordSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    const-string v0, "mv /system/media/audio/ui/VideoRecord.ogg /system/media/audio/ui/VideoRecord.bak"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "mv /system/media/audio/ui/VideoRecord.bak /system/media/audio/ui/VideoRecord.ogg"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->focusSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 47
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/CameraSound;->focusSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 49
    const-string v0, "mv /system/media/audio/ui/camera_focus.ogg /system/media/audio/ui/camera_focus.bak"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_5
    const-string v0, "mv /system/media/audio/ui/camera_focus.bak /system/media/audio/ui/camera_focus.ogg"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0
.end method
