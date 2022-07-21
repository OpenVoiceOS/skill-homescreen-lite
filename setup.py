#!/usr/bin/env python3
from setuptools import setup

# skill_id=package_name:SkillClass
PLUGIN_ENTRY_POINT = 'skill-homescreen-lite.openvoiceos=skill_homescreen_lite:OVOSHomescreenSkill'
# in this case the skill_id is defined to purposefully replace the mycroft version of the skill,
# or rather to be replaced by it in case it is present. all skill directories take precedence over plugin skills


setup(
    # this is the package name that goes on pip
    name='ovos-skill-homescreen-lite',
    version='0.0.1',
    description='Minimal OVOS homescreen skill plugin',
    url='https://github.com/OpenVoiceOS/skill-homescreen-lite',
    author='Aix',
    author_email='aix.m@outlook.com',
    license='Apache-2.0',
    package_dir={"skill_homescreen_lite": ""},
    package_data={'skill_homescreen_lite': ["vocab/*", "ui/*"]},
    packages=['skill_homescreen_lite'],
    include_package_data=True,
    install_requires=["astral==1.4", "arrow==0.12.0"],
    keywords='ovos skill plugin',
    entry_points={'ovos.plugin.skill': PLUGIN_ENTRY_POINT}
)
